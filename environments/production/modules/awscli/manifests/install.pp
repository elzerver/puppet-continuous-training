# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include awscli::install
class awscli::install {
  package { 'install_awscli':
    name => 'awscli',
    ensure => 'present',
  }
}
