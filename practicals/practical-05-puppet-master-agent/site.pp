node 'agent1' {
  file { '/tmp/from-server.txt':
    ensure  => file,
    content => "Configured by the Puppet server\n",
  }
}

node default { }
