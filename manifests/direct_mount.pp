define autofs::direct_mount(
  $server,
  $share,
  $fstype,
  $mountpoint     = $name,
  $ensure         = present,
  $client_options = undef,
) {

  concat::fragment { "/etc/auto.direct_${mountpoint}":
    target  => '/etc/auto.direct',
    content => template('autofs/autofs.direct.erb'),
    order   => 02,
  }

}
