class auth {
    file { "/root/.ssh":
 	ensure => "directory",
	owner  => "root",
	group  => "root",
	mode   => "700",
}
    file { "/root/.ssh/authorized_keys":
	ensure => file,
        owner => root,
        group => root,
        mode => 600,
        source => "puppet://$puppetmaster/files/authorized_keys",

    }
}
