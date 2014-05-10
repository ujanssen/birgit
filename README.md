birgit
======

A set of puppet modules.

Install
-------

Install the puppet files on puppet master:

	apt-get install puppetmaster

Install the repo into the `/etc` directory:

	git clone git@github.com:ujanssen/birgit.git /etc/puppet

Start the puppet master:

	service puppetmaster start

Test
----

Test the puppet agent:

	export PUPPET_MASTER=$(facter hostname).$(facter domain)
	puppet agent -t  --server $PUPPET_MASTER
