# Class: couchbase::params
#
# Parameters for and from the couchbase module.
#
# Parameters :
#  none
#
# Sample Usage :
#  include couchbase::params
#
class couchbase::params {
  $rpmbasename = 'couchbase-server-community-3.0.1-centos6.x86_64.rpm'
  $rpmbaseurl  = 'http://packages.couchbase.com/releases/3.0.1'
  $basedir     = '/opt/couchbase'
}

