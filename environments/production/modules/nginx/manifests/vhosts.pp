#  Generate a virtual hosts file for nginx
#  @summary Generate a virtual hotss file for nginx
# 
#
# @example
#   include nginx::vhosts
class nginx::vhosts (
  $vhost_dir = $nginx::params::vhosts_dir,
) inherits nginx::params {
  file { "${nginx::vhost_name}.conf":
     content => epp('nginx/vhosts.conf.epp'),
     ensure => $nginx::vhost_ensure,
     path => "${vhost_dir}/${nginx::vhost_name}.conf"
  }

  file { "$nginx::vhosts_root":
     ensure => 'directory',
}
