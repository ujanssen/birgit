class ganglia ($node_type = 'master') {

 	service { 'ganglia-monitor':
 		require => Package['ganglia-monitor'],
        ensure  => running,
    }

	package { 'ganglia-monitor':
		ensure => 'installed',
	}

	file { '/etc/ganglia/gmond.conf':
        ensure => file,
        source => "puppet:///modules/ganglia/gmond-${node_type}.conf",
        notify => Service['ganglia-monitor'],
    }

    if $node_type == 'master' {
 	service { 'gmetad':
 		require => Package['gmetad'],
        ensure  => running,
    }

	package { 'gmetad':
		ensure => 'installed',
	}

	file { '/etc/ganglia/gmetad.conf':
        ensure => file,
        source => "puppet:///modules/ganglia/gmetad.conf",
        notify => Service['gmetad'],
    }
    }
}

