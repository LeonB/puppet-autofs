define autofs::direct_mount(
	$mountpoint     = $name,
	$server,
	$share,
	$ensure         = present,
	$fstype,
	$client_options = undef,
) {

   concat::fragment { "/etc/auto.direct_${mountpoint}":
      target  => '/etc/auto.direct',
      content => template('autofs/autofs.direct.erb'),
      order   => 02,
   }

}
