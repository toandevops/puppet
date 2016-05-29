class common::wrapper::global {
     contain common::repositories::centos
     contain common::repositories::puppet
     contain common::repositories::jenkins
     contain common::repositories::nodejs
     contain common::packages::base
     contain common::wrapper::jemalloc
     contain common::services::services

     Class['common::repositories::centos']->
     Class['common::repositories::puppet']->
     Class['common::repositories::jenkins']->
     Class['common::repositories::nodejs']->
     Class['common::packages::base']->
     Class['common::wrapper::jemalloc']->
     Class['common::services::services']
}
