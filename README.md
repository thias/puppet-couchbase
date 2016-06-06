# puppet-couchbase

## Overview

Install and enable a Couchbase Server instance. It has been tested with Red Hat
Enterprise Linux and requires the RPM packages to be available using yum.

* `couchbase::server` : Main Couchbase Server class

This module is quite basic, since all of the configuration is done using
the web interface on port 8091 once the daemon is running.

## Server Parameters

* `type` : `community` (default), `enterprise` or `unknown` (for < 3.0.1)

## Examples

```puppet
include '::couchbase::server'
```

```puppet
class { '::couchbase::server': type => 'enterprise' }
```

