# @summary A short summary of the purpose of this class
#
# Manages the nginx.conf file
#
# @summary Manages the nginx.conf file
#   include nginx::config
class nginx::config {
   file { 'nginx_config':
      path  => '/etc/nginx/nginx.conf',
      source => 'puppet:///modules/nginx/deb-nginx.conf',
      ensure => 'present',
      notify => Service['nginx_service'],
   }
}
