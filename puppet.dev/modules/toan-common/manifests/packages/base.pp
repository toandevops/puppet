class common::packages::base {
	package { 
	  ['bzip2','gcc','ntp','wget','tcl','mlocate','bind-utils','make','puppet']:
 	     ensure => 'installed',
	     before => Class['common::services::services'],
	}
}
