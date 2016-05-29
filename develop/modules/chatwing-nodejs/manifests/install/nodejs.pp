class nodejs::install::nodejs {
	package { 'nodejs':
	  ensure	=> 'installed',
	}
}
