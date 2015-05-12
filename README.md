# puppet-couchbase

## Overview

Install and enable a Couchbase Server instance.

* `couchbase::server` : Main Couchbase Server class

This module is quite basic, since all of the configuration is done using
the web interface on port 8091 once the daemon is running.

## Examples

```puppet
include '::couchbase::server'
```

