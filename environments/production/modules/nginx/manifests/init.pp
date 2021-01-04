# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx
class nginx (
   $package_name = $nginx::params::package_name,
   $config_path = $nginx::params::config_path,
   $config_source = $nginx::params::config_source,
   $service_name = $nginx::params::service_name,
   $vhost_dir = $nginx::params::vhost_dir,
   String $package_ensure,
   String $config_ensure,
   String $service_ensure,
   Boolean $service_enable,
   Boolean $service_restart,
   String $vhost_port,
   String $vhosts_root,
   String $vhost_ensure,
   String $vhosts_name, 
) inherits nginx::params {
   contain nginx::install
   contain nginx::config
   contain nginx::service
   contain nginx::vhosts

   Class['nginx::install']
   -> Class['nginx::config']
   ~> Class['nginx::service']
   -> Class['nginx::vhosts']
}
