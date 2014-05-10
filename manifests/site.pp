node 'nas.fritz.box' {
	class { 'ganglia':
    	node_type => 'master',
    }
} 

node 'keller.fritz.box' {
	class { 'ganglia':
    	node_type => 'node',
    }
} 
