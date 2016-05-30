class common::repositories::jenkins {
		yumrepo { 'jenkins':
		ensure   => 'present',
		baseurl  => 'http://pkg.jenkins-ci.org/redhat-stable',
		descr    => 'Jenkins',
		gpgcheck => '0',
		}
}
