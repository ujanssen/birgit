class ganglia {
	package { "ganglia-monitor":
		ensure => "installed"
	}

	file { "/tmp/ganglia":
		content => "test"
	}
}

