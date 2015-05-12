# Create custom facts if couchbase is found

if FileTest.exists?('/opt/couchbase/VERSION.txt')
  Facter.add('couchbase') { setcode { true } }
  fullversion = File.read('/opt/couchbase/VERSION.txt').match /([^-]+)-(.+)/
  Facter.add('couchbase_version') { setcode { fullversion[1] } }
  Facter.add('couchbase_release') { setcode { fullversion[2] } }
end

