
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
