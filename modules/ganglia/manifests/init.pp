class ganglia ($node_type = 'master') {
	package { "ganglia-monitor":
		ensure => "installed"
	}

	file { "/tmp/ganglia":
		content => "$node_type"
	}
}

