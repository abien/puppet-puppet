# Default parameters
class puppet::params {

  # Basic config
  $version             = 'present'
  $user                = 'puppet'
  $group               = 'puppet'
  $dir                 = '/etc/puppet'
  $vardir              = '/var/lib/puppet'
  $ca                  = true
  $ca_server           = false
  $service_fallback    = true
  $port                = 8140
  $listen              = false
  $pluginsync          = true
  $splay               = false
  $runinterval         = '1800'
  $runmode             = 'service'
  $agent_noop          = false
  $puppet_master       = 'puppet'


  # Need your own config templates? Specify here:
  $agent_template  = 'puppet/puppet.conf.erb'
  $auth_template   = 'puppet/auth.conf.erb'
  $nsauth_template = 'puppet/namespaceauth.conf.erb'

  $client_package     = $::operatingsystem ? {
    /(Debian|Ubuntu)/ => ['puppet-common','puppet'],
    default           => ['puppet'],
  }

  # This only applies to puppet::cron
  $cron_range          = 60 # the maximum value for our cron
  $cron_interval       = 2  # the amount of values within the $cron_range

}
