class redis::wrapper::redis {
  class redis_file {
	exec { 'create_dir_redis':
	  command => '/usr/bin/mkdir -p /etc/puppet/modules/redis/files',
	  creates => '/etc/puppet/modules/redis/files',
	  before  => File['/etc/puppet/modules/redis/files/redis-3.2.0.tar'],
	}
	file {'/etc/puppet/modules/redis/files/redis-3.2.0.tar':
	  ensure => 'present',
	  source => 'puppet:///install_files/redis-3.2.0.tar',
	  before => Class['redis_install'],
	}
  }
  class redis_install {
	exec { 'env_redis':
	  command => "/usr/bin/echo 'vm.overcommit_memory = 1' > /etc/sysctl.conf",
	  cwd    => '/etc',
	  before => Exec['env_load'],
	}
	exec { 'env_load':
	  command => '/usr/sbin/sysctl -p',
	  cwd     => '/usr/sbin',
	  before => Exec['uncompress_redis'],
	}
	exec { 'uncompress_redis':
	  command => '/usr/bin/tar -xf /etc/puppet/modules/redis/files/redis-3.2.0.tar -C /etc/puppet/modules/redis/files/',
	  creates => '/etc/puppet/modules/redis/files/redis-3.2.0',
	  before => Exec['make_redis'],
	}
	exec { 'make_redis':
	  command => '/usr/bin/make && /usr/bin/make install',
	  cwd     => '/etc/puppet/modules/redis/files/redis-3.2.0',
	  before  => Exec['install_redis'],
	}
	exec { 'install_redis':
	  command => "/usr/bin/cd /etc/puppet/modules/redis/files/redis-3.2.0/utils && /usr/bin/echo yes | /usr/bin/sh install_server.sh",
	  cwd     => '/etc/puppet/modules/redis/files/redis-3.2.0/utils',
	}
  }
contain jemalloc
contain redis_file
contain redis_install

Class ['jemalloc']->
Class ['redis_file'] ->
Class ['redis_install']
}
