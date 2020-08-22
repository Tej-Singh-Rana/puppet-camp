# Install a NTP package

package { "ntp":
    
    ensure => "present",

  }

# File configuration

file { "/etc/ntp.conf":
 
   ensure => "present",
   content => "server 0.centos.pool.ntp.org iburst\n",

  }

# Service start

service { "ntpd":

   ensure => "running",

  }