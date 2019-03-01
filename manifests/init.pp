# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rng
class rng {
  package { 'rng-tools':
    ensure => installed,
  }
  ->service { 'rngd':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}
