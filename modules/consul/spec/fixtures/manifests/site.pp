node 'hiera_host.example.com' {
  $version = hiera('consul::version')
  include consul
}

node 'param_host.example.com' {
  include consul
}

node default {}
