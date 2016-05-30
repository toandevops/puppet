class modules::wrapper::nodejsmodules {
    class nodejs_modules_file {
	exec { 'create_dir_nodejs_modules':
	  command => '/usr/bin/mkdir -p /etc/puppet/modules/nodejsmodules/files',
	  creates => '/etc/puppet/modules/nodejsmodules/files',
	  before  => File['/etc/puppet/modules/nodejsmodules/files/nodejs_modules.tar'],
	}
	file {'/etc/puppet/modules/nodejsmodules/files/nodejs_modules.tar':
	  ensure => 'present',
	  source => 'puppet:///install_files/nodejs_modules.tar',
	  before => Class['nodejs_modules_install'],
	}
  }
  class nodejs_modules_install {
	exec { 'create_modules_dir':
	  command => '/usr/bin/mkdir -p /var/projects/chatwing.git/CHATWING/sample-api',
	  creates => '/var/projects/chatwing.git/CHATWING/sample-api',
	  before  => Exec['uncompress_nodejs_modules'],
	}
	exec { 'uncompress_nodejs_modules':
	  command => '/usr/bin/tar -xf /etc/puppet/modules/nodejsmodules/files/nodejs_modules.tar -C /var/projects/chatwing.git/CHATWING/sample-api/',
	  creates => '/var/projects/chatwing.git/CHATWING/sample-api/nodejs_modules',
	}
  }
contain nodejs_modules_file
contain nodejs_modules_install

Class['nodejs_modules_file'] ->
Class['nodejs_modules_install']
}
