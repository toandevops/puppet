class common::packages::base {
	package { 
	  ['bzip2','gcc','ntp','wget','tcl','mlocate','bind-utils']:
 	     ensure => 'installed',
	}
}
