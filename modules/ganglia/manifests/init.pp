class ganglia ($node_type = 'master') {

 	service { 'ganglia-monitor':
 		require => Package["ganglia-monitor"],
        ensure  => running,
    }

	package { "ganglia-monitor":
		ensure => "installed"
	}

	file { "/tmp/ganglia-gmond.conf":
        ensure => file,
        source => "puppet:///modules/ganglia/gmond-${node_type}.conf",
        notify => Service["ganglia-monitor'"]
    }
}

