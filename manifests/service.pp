class apache::service {
  include apache::params
  service { $apache::params::apache_svc_name:
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['apache::install'],
  }
}
