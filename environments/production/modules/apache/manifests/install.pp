# @summary 
#
# Install the base Apache package. 
#
# @example
#   include apache::install
class apache::install {
   package { 'httpd':
      ensure => 'present',
   }
}
