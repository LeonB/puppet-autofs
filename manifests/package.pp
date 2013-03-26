class autofs::package {

	package  { $autofs::package_name:
		ensure => $autofs::ensure,
		# require => Apt::Ppa['ppa:transmissionbt/ppa'],
	}
}
