class autofs::service {

  service { 'autofs':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['autofs::package'],
    subscribe  => Class['autofs::config']
  }
}
