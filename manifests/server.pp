# Install a Couchbase Server
#
class couchbase::server (
  Enum['community','enterprise','unknown'] $type = 'community',
) {

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
