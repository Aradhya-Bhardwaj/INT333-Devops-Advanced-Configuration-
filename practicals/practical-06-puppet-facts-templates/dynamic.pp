$memory = $facts['memory']['system']['total']

file { '/etc/motd':
  ensure  => file,
  content => inline_epp(@(END), { 'memory' => $memory }),
    <%- | String $memory | -%>
    Host: <%= $facts['networking']['hostname'] %>
    OS: <%= $facts['os']['name'] %> <%= $facts['os']['release']['full'] %>
    Memory: <%= $memory %>
    | END
}
