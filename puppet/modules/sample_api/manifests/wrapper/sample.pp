class sample_api::wrapper::sample {
   class sample_api_file {
	exec { 'create_dir_sample':
	  command => '/usr/bin/mkdir -p /etc/puppet/modules/sample_api/files',
	  creates => '/etc/puppet/modules/sample_api/files',
	  before  => File['/etc/puppet/modules/sample_api/files/sample-api.tar'],
	}
	file {'/etc/puppet/modules/sample_api/files/sample-api.tar':
	  ensure => 'present',
	  source => 'puppet:///install_files/sample-api.tar',
	  before => Class['sample_api_install'],
	}
   }
   class sample_api_install {
	exec { 'create_dir_deploy':
	  command => '/usr/bin/mkdir -p /var/projects/chatwing.git/CHATWING',
	  creates => '/var/projects/chatwing.git/CHATWING',
	}
	exec { 'umcompress_sample_api':
	  command => '/usr/bin/tar -xf /etc/puppet/modules/sample_api/files/sample-api.tar -C /var/projects/chatwing.git/CHATWING/',
	  creates => '/var/projects/chatwing.git/CHATWING/sample-api',
	}
   }

contain sample_api_file
contain sample_api_install

Class ['sample_api_file'] ->
Class ['sample_api_install']
}
