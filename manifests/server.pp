# Install a Couchbase Server
#
class couchbase::server (
  $type = 'community',
) {

  validate_re($type, [ '^community$', '^enterprise$', '^unknown$' ])

  if $type == 'unknown' {
    package { 'couchbase-server':
      ensure => 'installed',
    }
  } else {
    package { "couchbase-server-${type}":
      ensure => 'installed',
      alias  => 'couchbase-server',
    }
  }
  service { 'couchbase-server':
    ensure    => 'running',
    enable    => true,
    hasstatus => true,
    require   => Package['couchbase-server'],
  }

}
