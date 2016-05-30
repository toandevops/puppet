class common::repositories::nodejs {
		yumrepo { 'nodesource':
		  ensure         => 'present',
	          baseurl        => 'https://rpm.nodesource.com/pub_5.x/el/7/$basearch',
		  descr          => 'Node.js Packages for Enterprise Linux 7 - $basearch',
	      	  enabled        => '1',
	      	  failovermethod => 'priority',
		  gpgcheck	 => '0',
		}
		yumrepo { 'nodesource-source':
          	  ensure         => 'present',
          	  baseurl        => 'https://rpm.nodesource.com/pub_5.x/el/7/SRPMS',
          	  descr          => 'Node.js for Enterprise Linux 7 - $basearch - Source',
          	  enabled        => '0',
          	  failovermethod => 'priority',
		  gpgcheck	 => '0',
		}
}
