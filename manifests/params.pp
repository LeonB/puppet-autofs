# Class: autofs::params
#
# This class defines default parameters used by the main module class autofs
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to autofs class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class autofs::params {

	### Application related parameters

	$package_name = $::operatingsystem ? {
		default => 'autofs'
	}

	$enabled = true

}
