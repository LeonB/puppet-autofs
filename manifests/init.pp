class autofs(
  $package_name = params_lookup( 'package_name' ),
  $enabled       = params_lookup( 'enabled' )
  ) inherits autofs::params {

    $ensure = $enabled ? {
      true => present,
      false => absent
    }

  include autofs::package, autofs::config, autofs::service
}
