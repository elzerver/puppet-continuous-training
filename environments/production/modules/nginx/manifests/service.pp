# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx::service
class nginx::service {
   service { 'nginx_service':
      name => $service_name,
      ensure => $nginx::service_ensure,
      enable => $nginx::service_enable,
      hasrestart => $nginx::service_restart,
   }
}
