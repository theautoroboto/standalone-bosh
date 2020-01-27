#!/bin/bash

binary_buildpack_release="1.0.30"
bpm_release="1.0.2"
capi_release="1.76.0"
cf_networking_release="2.20.0"
cf_smoke_tests_release="40.0.45"
cf_syslog_drain_release="9.0"
cflinuxfs2_release="1.260.0"
cflinuxfs3_release="0.51.0"
bosh_dns_aliases_release="0.0.3"
pxc_release="0.14.0"
credhub_release="2.1.2"
diego_release="2.28.0"
garden_runc_release="1.18.2"
loggregator_release="104.5"
nats_release="26"
cf_routing_release="0.184.0"
silk_release="2.20.0"
statsd_injector_release="1.7.0"
uaa_release="69.0"
loggregator_agent_release="3.5"
log_cache_release="2.1.1"
cf_cli_release="1.12.0"
dotnet_core_buildpack_release="2.2.5"
go_buildpack_release="1.8.33"
java_buildpack_release="4.17.2"
nginx_buildpack_release="1.0.8"
r_buildpack_release="1.0.3"
nodejs_buildpack_release="1.6.43"
php_buildpack_release="4.3.70"
python_buildpack_release="1.6.28"
staticfile_buildpack_release="1.4.39"
ruby_buildpack_release="1.7.31"
xenial_release="250.4"


mkdir /tmp/cf
mkdir /tmp/stemcells
wget https://bosh.io/d/github.com/cloudfoundry/binary-buildpack-release?v="$binary_buildpack_release" -O /tmp/cf/binary.tgz
wget https://bosh.io/d/github.com/cloudfoundry-incubator/bpm-release?v="$bpm_release" -O /tmp/cf/bpm.tgz
wget https://bosh.io/d/github.com/cloudfoundry/capi-release?v="$capi_release" -O /tmp/cf/capi.tgz
wget https://bosh.io/d/github.com/cloudfoundry/cf-networking-release?v="$cf_networking_release" -O /tmp/cf/net.tgz
wget https://bosh.io/d/github.com/cloudfoundry/cf-smoke-tests-release?v="$cf_smoke_tests_release" -O /tmp/cf/smoke.tgz
wget https://bosh.io/d/github.com/cloudfoundry/cf-syslog-drain-release?v="$cf_syslog_drain_release" -O /tmp/cf/syslog.tgz
wget https://bosh.io/d/github.com/cloudfoundry/cflinuxfs2-release?v="$cflinuxfs2_release" -O /tmp/cf/fs2.tgz
wget https://bosh.io/d/github.com/cloudfoundry/cflinuxfs3-release?v="$cflinuxfs3_release" -O /tmp/cf/fs3.tgz
wget https://bosh.io/d/github.com/cloudfoundry/bosh-dns-aliases-release?v="$bosh_dns_aliases_release" -O /tmp/cf/dns.tgz
wget https://bosh.io/d/github.com/cloudfoundry-incubator/pxc-release?v="$pxc_release" -O /tmp/cf/pxc.tgz
wget https://bosh.io/d/github.com/pivotal-cf/credhub-release?v="$credhub_release" -O /tmp/cf/cred.tgz
wget https://bosh.io/d/github.com/cloudfoundry/diego-release?v="$diego_release" -O /tmp/cf/diego.tgz
wget https://bosh.io/d/github.com/cloudfoundry/garden-runc-release?v="$garden_runc_release" -O /tmp/cf/runc.tgz

wget https://bosh.io/d/github.com/cloudfoundry/loggregator-release?v="$loggregator_release" -O /tmp/cf/loggregator.tgz
wget https://bosh.io/d/github.com/cloudfoundry/nats-release?v="$nats_release" -O /tmp/cf/nats.tgz
wget https://bosh.io/d/github.com/cloudfoundry-incubator/cf-routing-release?v="$cf_routing_release" -O /tmp/cf/routing.tgz
wget https://bosh.io/d/github.com/cloudfoundry/silk-release?v="$silk_release" -O /tmp/cf/silk.tgz
wget https://bosh.io/d/github.com/cloudfoundry/statsd-injector-release?v="$statsd_injector_release" -O /tmp/cf/statd.tgz
wget https://bosh.io/d/github.com/cloudfoundry/uaa-release?v="$uaa_release" -O /tmp/cf/uaa.tgz
wget https://bosh.io/d/github.com/cloudfoundry/loggregator-agent-release?v="$loggregator_agent_release" -O /tmp/cf/logg-agent.tgz
wget https://bosh.io/d/github.com/cloudfoundry/log-cache-release?v="$log_cache_release" -O /tmp/cf/log-cache.tgz
wget https://bosh.io/d/github.com/bosh-packages/cf-cli-release?v="$cf_cli_release" -O /tmp/cf/cf-cli.tgz

wget https://bosh.io/d/github.com/cloudfoundry/dotnet-core-buildpack-release?v="$dotnet_core_buildpack_release" -O /tmp/cf/dotnet.tgz
wget https://bosh.io/d/github.com/cloudfoundry/go-buildpack-release?v="$go_buildpack_release" -O /tmp/cf/go.tgz
wget https://bosh.io/d/github.com/cloudfoundry/java-buildpack-release?v="$java_buildpack_release" -O /tmp/cf/java.tgz
wget https://bosh.io/d/github.com/cloudfoundry/nginx-buildpack-release?v="$nginx_buildpack_release" -O /tmp/cf/nginx.tgz
wget https://bosh.io/d/github.com/cloudfoundry/r-buildpack-release?v="$r_buildpack_release" -O /tmp/cf/r.tgz
wget https://bosh.io/d/github.com/cloudfoundry/nodejs-buildpack-release?v="$nodejs_buildpack_release" -O /tmp/cf/node.tgz
wget https://bosh.io/d/github.com/cloudfoundry/php-buildpack-release?v="$php_buildpack_release" -O /tmp/cf/php.tgz
wget https://bosh.io/d/github.com/cloudfoundry/python-buildpack-release?v="$python_buildpack_release" -O /tmp/cf/python.tgz
wget https://bosh.io/d/github.com/cloudfoundry/staticfile-buildpack-release?v="$staticfile_buildpack_release" -O /tmp/cf/static.tgz
wget https://bosh.io/d/github.com/cloudfoundry/ruby-buildpack-release?v="$ruby_buildpack_release" -O /tmp/cf/ruby.tgz


wget https://s3.amazonaws.com/bosh-core-stemcells/vsphere/bosh-stemcell-"$xenial_release"-vsphere-esxi-ubuntu-xenial-go_agent.tgz -O /tmp/stemcells/xenial.tgz

for uploadrelease in /tmp/cf/*.tgz; do
	bosh -e pxe upload-release "$uploadrelease" && rm "$uploadrelease"
done


for uploadstemcell in /tmp/stemcells/*.tgz; do
	bosh -e pxe upload-stemcell "$uploadstemcell" && rm "$uploadstemcell"
done