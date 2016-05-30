class common::repositories::centos {
		yumrepo { 'C7.0.1406-base':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.0.1406/os/$basearch/',
		  descr    => 'CentOS-7.0.1406 - Base',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.0.1406-centosplus':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.0.1406/centosplus/$basearch/',
		  descr    => 'CentOS-7.0.1406 - CentOSPlus',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.0.1406-extras':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.0.1406/extras/$basearch/',
		  descr    => 'CentOS-7.0.1406 - Extras',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.0.1406-fasttrack':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.0.1406/fasttrack/$basearch/',
		  descr    => 'CentOS-7.0.1406 - CentOSPlus',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.0.1406-updates':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.0.1406/updates/$basearch/',
		  descr    => 'CentOS-7.0.1406 - Updates',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.1.1503-base':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.1.1503/os/$basearch/',
		  descr    => 'CentOS-7.1.1503 - Base',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.1.1503-centosplus':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.1.1503/centosplus/$basearch/',
		  descr    => 'CentOS-7.1.1503 - CentOSPlus',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.1.1503-extras':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.1.1503/extras/$basearch/',
		  descr    => 'CentOS-7.1.1503 - Extras',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.1.1503-fasttrack':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.1.1503/fasttrack/$basearch/',
		  descr    => 'CentOS-7.1.1503 - CentOSPlus',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'C7.1.1503-updates':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/7.1.1503/updates/$basearch/',
		  descr    => 'CentOS-7.1.1503 - Updates',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'base':
		  ensure     => 'present',
		  descr      => 'CentOS-$releasever - Base',
		  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra',
		  gpgcheck => '0',
		}
		yumrepo { 'base-debuginfo':
		  ensure   => 'present',
		  baseurl  => 'http://debuginfo.centos.org/7/$basearch/',
		  descr    => 'CentOS-7 - Debuginfo',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'base-source':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/centos/$releasever/os/Source/',
		  descr    => 'CentOS-$releasever - Base Sources',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'c7-media':
		  ensure   => 'present',
		  baseurl  => 'file:///media/CentOS/
				file:///media/cdrom/
				file:///media/cdrecorder/',
		  descr    => 'CentOS-$releasever - Media',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'centosplus':
		  ensure   => 'present',
		  descr    => 'CentOS-$releasever - Plus',
		  enabled  => '0',
		  gpgcheck => '0',
		  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=centosplus&infra=$infra',
		}
		yumrepo { 'centosplus-source':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/centos/$releasever/centosplus/Source/',
		  descr    => 'CentOS-$releasever - Plus Sources',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'cr':
		  ensure   => 'present',
		  baseurl  => 'http://mirror.centos.org/centos/$releasever/cr/$basearch/',
		  descr    => 'CentOS-$releasever - cr',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'extras':
		  ensure     => 'present',
		  descr      => 'CentOS-$releasever - Extras',
		  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=extras&infra=$infra',
		  gpgcheck => '0',
		}
		yumrepo { 'extras-source':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/centos/$releasever/extras/Source/',
		  descr    => 'CentOS-$releasever - Extras Sources',
		  enabled  => '0',
		  gpgcheck => '0',
		}
		yumrepo { 'fasttrack':
		  ensure     => 'present',
		  descr      => 'CentOS-7 - fasttrack',
		  enabled    => '0',
		  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=fasttrack&infra=$infra',
		  gpgcheck => '0',
		}
		yumrepo { 'updates':
		  ensure     => 'present',
		  descr      => 'CentOS-$releasever - Updates',
		  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra',
		  gpgcheck => '0',
		}
		yumrepo { 'updates-source':
		  ensure   => 'present',
		  baseurl  => 'http://vault.centos.org/centos/$releasever/updates/Source/',
		  descr    => 'CentOS-$releasever - Updates Sources',
		  enabled  => '0',
		  gpgcheck => '0',
		}
}
