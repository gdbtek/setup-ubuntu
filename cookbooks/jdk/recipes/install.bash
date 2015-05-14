#!/bin/bash -e

function install()
{
    # Clean Up

    initializeFolder "${jdkInstallFolder}"

    # Install

    unzipRemoteFile "${jdkDownloadURL}" "${jdkInstallFolder}"

    # Config Lib

    chown -R "$(whoami):$(whoami)" "${jdkInstallFolder}"
    ln -f -s "${jdkInstallFolder}/bin/jar" '/usr/local/bin/jar'
    ln -f -s "${jdkInstallFolder}/bin/java" '/usr/local/bin/java'
    ln -f -s "${jdkInstallFolder}/bin/javac" '/usr/local/bin/javac'

    # Config Profile

    local profileConfigData=('__INSTALL_FOLDER__' "${jdkInstallFolder}")

    createFileFromTemplate "${appPath}/../templates/default/jdk.sh.profile" '/etc/profile.d/jdk.sh' "${profileConfigData[@]}"

    # Display Version

    info "\n$(java -version 2>&1)"
}

function main()
{
    local installFolder="${1}"

    appPath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    source "${appPath}/../../../libraries/util.bash"
    source "${appPath}/../attributes/default.bash"

    checkRequireSystem
    checkRequireRootUser

    header 'INSTALLING JDK'

    # Override Default Config

    if [[ "$(isEmptyString "${installFolder}")" = 'false' ]]
    then
        jdkInstallFolder="${installFolder}"
    fi

    # Install

    install
    installCleanUp
}

main "${@}"