#!/bin/bash -e

function main()
{
    local -r appFolderPath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    source "${appFolderPath}/../libraries/util.bash"

    "${appFolderPath}/../cookbooks/essential/recipes/install.bash"

    "${appFolderPath}/../cookbooks/akamai-cli/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ant/recipes/install.bash"
    "${appFolderPath}/../cookbooks/aws-cli/recipes/install.bash"
    "${appFolderPath}/../cookbooks/chef-dk/recipes/install.bash"
    "${appFolderPath}/../cookbooks/chrony/recipes/install.bash"
    "${appFolderPath}/../cookbooks/clean-up/recipes/install.bash"
    "${appFolderPath}/../cookbooks/consul/recipes/install.bash"
    "${appFolderPath}/../cookbooks/data-dog/recipes/install.bash"
    "${appFolderPath}/../cookbooks/docker/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ec2-ami-tools/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ec2-api-tools/recipes/install.bash"
    "${appFolderPath}/../cookbooks/elastic-search/recipes/install.bash"
    "${appFolderPath}/../cookbooks/foodcritic/recipes/install.bash"
    "${appFolderPath}/../cookbooks/go-cd/recipes/install.bash"
    "${appFolderPath}/../cookbooks/go-lang/recipes/install.bash"
    "${appFolderPath}/../cookbooks/groovy/recipes/install.bash"
    "${appFolderPath}/../cookbooks/haproxy/recipes/install.bash"
    "${appFolderPath}/../cookbooks/jdk/recipes/install.bash"
    "${appFolderPath}/../cookbooks/jenkins/recipes/install.bash"
    "${appFolderPath}/../cookbooks/jq/recipes/install.bash"
    "${appFolderPath}/../cookbooks/kibana/recipes/install.bash"
    "${appFolderPath}/../cookbooks/logrotate/recipes/install.bash"
    "${appFolderPath}/../cookbooks/maven/recipes/install.bash"
    "${appFolderPath}/../cookbooks/mongodb/recipes/install.bash"
    "${appFolderPath}/../cookbooks/mount-hd/recipes/install.bash"
    "${appFolderPath}/../cookbooks/mtr/recipes/install.bash"
    "${appFolderPath}/../cookbooks/mysql/recipes/install.bash"
    "${appFolderPath}/../cookbooks/nginx/recipes/install.bash"
    "${appFolderPath}/../cookbooks/node-js/recipes/install.bash"
    "${appFolderPath}/../cookbooks/nomad/recipes/install.bash"
    "${appFolderPath}/../cookbooks/packer/recipes/install.bash"
    "${appFolderPath}/../cookbooks/parallel/recipes/install.bash"
    "${appFolderPath}/../cookbooks/pcre/recipes/install.bash"
    "${appFolderPath}/../cookbooks/pm2/recipes/install.bash"
    "${appFolderPath}/../cookbooks/porter/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ps1/recipes/install.bash"
    "${appFolderPath}/../cookbooks/python/recipes/install.bash"
    "${appFolderPath}/../cookbooks/redis/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ruby/recipes/install.bash"
    "${appFolderPath}/../cookbooks/secret-server-console/recipes/install.bash"
    "${appFolderPath}/../cookbooks/selenium-server/recipes/install.bash"
    "${appFolderPath}/../cookbooks/shell-check/recipes/install.bash"
    "${appFolderPath}/../cookbooks/siege/recipes/install.bash"
    "${appFolderPath}/../cookbooks/splunk-forwarder/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ssh/recipes/install.bash"
    "${appFolderPath}/../cookbooks/stackstorm/recipes/install.bash"
    "${appFolderPath}/../cookbooks/terraform/recipes/install.bash"
    "${appFolderPath}/../cookbooks/test-ssl/recipes/install.bash"
    "${appFolderPath}/../cookbooks/tmp-reaper/recipes/install.bash"
    "${appFolderPath}/../cookbooks/tmp-watch/recipes/install.bash"
    "${appFolderPath}/../cookbooks/tomcat/recipes/install.bash"
    "${appFolderPath}/../cookbooks/tweaks/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ufw/recipes/install.bash"
    "${appFolderPath}/../cookbooks/ulimit/recipes/install.bash"
    "${appFolderPath}/../cookbooks/vault/recipes/install.bash"
    "${appFolderPath}/../cookbooks/vbox-guest-additions/recipes/install.bash"
    "${appFolderPath}/../cookbooks/vim/recipes/install.bash"
    "${appFolderPath}/../cookbooks/vmware-tools/recipes/install.bash"
    "${appFolderPath}/../cookbooks/wild-fly/recipes/install.bash"
    "${appFolderPath}/../cookbooks/wrk/recipes/install.bash"

    postUpMessage
}

main "${@}"