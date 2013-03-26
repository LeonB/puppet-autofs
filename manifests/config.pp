class autofs::config {

    # /-        /etc/auto.direct

    # file { '/etc/transmission-daemon/settings.json':
    #     source  => 'puppet:///modules/transmission/settings.json',
    #     owner   => debian-transmission,
    #     group   => debian-transmission,
    #     mode    => 0644,
    #     require => Class['transmission::package'],
    #     notify  => Class['transmission::service']
    # }

     # How to add `debian-transmission` group to user `leon`?
}
