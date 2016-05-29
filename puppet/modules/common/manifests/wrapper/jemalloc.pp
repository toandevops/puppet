class common::wrapper::jemalloc {
  class jemalloc_file {
	exec { 'create_dir_jemalloc':
	  command => '/usr/bin/mkdir -p /etc/puppet/modules/jemalloc/files',
	  creates => '/etc/puppet/modules/jemalloc/files',
	  before  => File['/etc/puppet/modules/jemalloc/files/jemalloc-4.2.0.tar'],
	}
	file {'/etc/puppet/modules/jemalloc/files/jemalloc-4.2.0.tar':
	  ensure => 'present',
	  source => 'puppet:///install_files/jemalloc-4.2.0.tar',
	  before => Class['jemalloc_install'],
	}
  }
  class jemalloc_install {
	exec { 'uncompress_jemalloc':
	  command => '/usr/bin/tar -xf /etc/puppet/modules/jemalloc/files/jemalloc-4.2.0.tar -C /etc/puppet/modules/jemalloc/files/',
	  creates => '/etc/puppet/modules/jemalloc/files/jemalloc-4.2.0',
	  before => Exec['configure_jemalloc'],
	}
	exec { 'configure_jemalloc':
	  command => '/usr/bin/sh /etc/puppet/modules/jemalloc/files/jemalloc-4.2.0/configure',
	  cwd	 => '/etc/puppet/modules/jemalloc/files/jemalloc-4.2.0',
	  before => Exec['install_jemalloc'],
	}
	exec { 'install_jemalloc':
	  command => '/usr/bin/cd /etc/puppet/modules/jemalloc/files/jemalloc-4.2.0 && /usr/bin/make && /usr/bin/make install',
	  cwd     => '/etc/puppet/modules/jemalloc/files/jemalloc-4.2.0',
	}
  }
contain common::packages::base
contain jemalloc_file
contain jemalloc_install

Class ['common::packages::base'] ->
Class ['jemalloc_file'] ->
Class ['jemalloc_install']
}
