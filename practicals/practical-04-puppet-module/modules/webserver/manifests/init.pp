class webserver (
  String $title_text = 'Deployed by a Puppet module',
) {
  package { 'nginx':
    ensure => installed,
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    content => epp('webserver/index.html.epp', { 'title_text' => $title_text }),
    require => Package['nginx'],
  }

  service { 'nginx':
    ensure  => running,
    enable  => true,
    require => Package['nginx'],
  }
}
