birgit
======

A set of most useful puppet modules.

Install
-------

Install the puppet files on puppet master:

	apt-get install puppetmaster

Install the repo into the `/etc` directory:

	mv /etc/puppet /tmp
	git clone git@github.com:ujanssen/birgit.git /etc/puppet

Start the puppet master:

	service puppetmaster start

Test
----

Test the puppet agent on puppet master:

	export PUPPET_MASTER=$(facter hostname).$(facter domain)
	puppet agent --enable
	puppet agent -t  --server $PUPPET_MASTER
	
Test on client:

	puppet agent --enable
	puppet agent -t --server=nas.fritz.box
	
On puppet master:

	sudo puppet cert sign --all


Install ntp module:

	puppet module install puppetlabs-ntp

	/etc/puppet/modules
	└─┬ puppetlabs-ntp (v3.1.1)
  	  └── puppetlabs-stdlib (v4.2.2)

License
-------
	
The MIT License (MIT)

Copyright (c) 2014 Uwe Janßen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
