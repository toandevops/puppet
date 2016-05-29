resources { 'firewall':
    purge   => true,
  }

  Firewall {
    before  => Class['firewall::post'],
    require => Class['firewall::pre'],
  }

  class { ['firewall::pre', 'firewall::post']: }

node 'master.lab.com'{
	include common
	include nodejs
	include redis
}
node 'node.lab.com' {
	include common
	include nodejs
	include redis
}

node 'node2.lab.com' {
	include common
	include nodejs
	include redis
}
