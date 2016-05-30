class common::repositories::puppet {
		yumrepo { 'puppetlabs-deps':
		  ensure   => 'present',
		  baseurl  => 'http://yum.puppetlabs.com/el/7/dependencies/$basearch',
		  descr    => 'Puppet Labs Dependencies El 7 - $basearch',
		  enabled  => '1',
		  gpgcheck => '0',
		}
		yumrepo { 'puppetlabs-deps-source':
		  ensure   => 'present',
		  baseurl  => 'http://yum.puppetlabs.com/el/7/dependencies/SRPMS',
		  descr    => 'Puppet Labs Source Dependencies El 7 - $basearch - Source',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'puppetlabs-devel':
		  ensure   => 'present',
		  baseurl  => 'http://yum.puppetlabs.com/el/7/devel/$basearch',
		  descr    => 'Puppet Labs Devel El 7 - $basearch',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'puppetlabs-devel-source':
		  ensure   => 'present',
		  baseurl  => 'http://yum.puppetlabs.com/el/7/devel/SRPMS',
		  descr    => 'Puppet Labs Devel El 7 - $basearch - Source',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'puppetlabs-products':
		  ensure   => 'present',
		  baseurl  => 'http://yum.puppetlabs.com/el/7/products/$basearch',
		  descr    => 'Puppet Labs Products El 7 - $basearch',
		  enabled  => '1',
		  gpgcheck => '0',
		}
		yumrepo { 'puppetlabs-products-source':
		  ensure   => 'present',
		  baseurl  => 'http://yum.puppetlabs.com/el/7/products/SRPMS',
		  descr    => 'Puppet Labs Products El 7 - $basearch - Source',
		  enabled  => '0',
		  gpgcheck => '0',
		  failovermethod => 'priority',
		}
}
