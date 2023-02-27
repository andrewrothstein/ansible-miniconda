#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://repo.anaconda.com/miniconda

dl()
{
    local ver=$1
    local python_ver=$2
    local os=$3
    local arch=$4
    local dotexe=${5:-sh}

    local platform="${os}-${arch}"
    local file="Miniconda3-py${python_ver}_${ver}-${platform}.${dotexe}"
    local url=$MIRROR/$file
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "      # %s\n" $url
    printf "      %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dlver_help () {
    local ver=$1
    local python_ver=$2
    printf "    '%s':\n" $python_ver
    dl $ver $python_ver Linux aarch64
    dl $ver $python_ver Linux ppc64le
    dl $ver $python_ver Linux s390x
    dl $ver $python_ver Linux x86_64
    dl $ver $python_ver MacOSX x86_64
    dl $ver $python_ver MacOSX arm64
    dl $ver $python_ver Windows x86_64 exe
}

dlver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dlver_help $ver 38
    dlver_help $ver 39
}

dlver ${1:-23.1.0-1}
