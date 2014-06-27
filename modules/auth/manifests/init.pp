class auth {
    file { "/root/.ssh/authorized_keys":
	ensure => file,
        owner => root,
        group => root,
        mode => 600,
        source => "puppet://$puppetmaster/files/authorized_keys",

    }
}
