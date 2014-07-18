# == Class: profiles::herelens
#
# Create a yum-compatible repo
#
# === Parameters
#
# None
#
# === Variables
#
# None
#
# === Examples
#
#  include profiles::herelens
#
# === Authors
#
# Landuber Kassa <landuber.kassa@here.com>
#
# === Copyright
#
# Copyright 2014 HERE
#
class profiles::herelens {
    package { 'herelens':
        provider  => 'rpm',
        source    => 'HERELens-0.0.1-0.1.noarch.rpm',
        require   => Yumrepo['RCS-Custom']
    }
}
