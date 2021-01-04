# @summary A short summary of the purpose of this class
#
# Manages the nginx.conf file
#
# @summary Manages the nginx.conf file
#   include nginx::config
class nginx::config (
  $config_path = $nginx::params::config_path,
  $config_source = $nginx::params::config_source, 
) inherits nginx::params {
   file { 'nginx_config':
      path  => $config_path,
      source => $config_source,
      ensure => $nginx::config_ensure,
      notify => Service['nginx_service'],
   }
}
