## Vagrant :: Ubuntu 14.04 + MongoDB 2.6 :: Puppet script ##

node 'ubuntumongo' {
    group { 'puppet': ensure => present }

    Exec {
        path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin/', '/usr/local/node/node-default/bin' ],
        logoutput => 'on_failure'
    }

    File { owner => 0, group => 0, mode => 0644 }

    # Mongo
    class {'::mongodb::globals':
        manage_package_repo => true,
        server_package_name => 'mongodb-org',
        nojournal = true
    } ->
    class {'::mongodb::server': }->
    class {'::mongodb::client': }
}