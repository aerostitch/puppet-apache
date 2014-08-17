class apache::params {
  case $::osfamily {
    Debian: {
      $apache_pkg = [ 'apache2' ]
      $apache_svc_name = 'apache2'
    }
    default: {
      fail("OS Family ${::osfamily} not supported yet by the module.")
    }
  }
}
