class apache::install {
  include apache::params
  package { $apache::params::apache_pkg:
    ensure => present,
  }
}
