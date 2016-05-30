class common::services::services {
       	case $operatingsystem {
	  centos, redhat: { $service_name = 'ntpd'}
	  debian, ubuntu: { $service_name = 'ntp' }
	}
	service { 'ntp':
	  name		=> $service_name,
	  ensure	=> 'running',
	  enable	=> true,
	  require	=> Package['ntp'],
	}
	service { 'puppet':
	  ensure	=> 'running',
	  enable	=> true,
	  require	=> Package['puppet'],
	}
}

