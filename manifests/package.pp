class autofs::package {

  package  { $autofs::package_name:
    ensure => $autofs::ensure,
  }
}
