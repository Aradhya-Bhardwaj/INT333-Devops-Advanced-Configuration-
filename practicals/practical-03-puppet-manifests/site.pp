package { 'nginx':
  ensure => installed,
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => "<h1>Managed by Puppet</h1>\n",
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}
