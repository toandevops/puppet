
node 'master.lab.com'{
	include common
        include jemalloc
        include nodejs
        include modules
        include redis
        include sample_api
}


node 'node2.lab.com'{
	include common
	include jemalloc
	include nodejs
	include modules
	include redis
	include sample_api
}

class order {
     	contain common
 	contain nodejs
	contain jemalloc
	contain redis
	contaim sample_api
	contain modules

	Class['common']->
	Class['nodejs']->
	Class['jemalloc']->
	Class['redis']->
	Class['sample_api']->
	Class['modules']
}
