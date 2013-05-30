#!/bin/bash

usage () {
    echo <<EOF
$0 [options]
 -h, --help   List all options
 --key, --region
              Passed as-is to the ec2 command line tools
 Create an AMI (Amazon Machine Image) for rethinkdb
EOF
}

main () {

    # http://cloud-images.ubuntu.com/releases/precise/release/
    base_ubuntu_ami=ami-79c0ae10

    ec2_command_options=

    while [[ $# -ne 0 ]]; do
        local opt=`shift`

        case "$opt" in
            --key|--region)
                ec2_command_options="$ec2_command_options $opt `shift`" ;; 
            -h|--help) usage; exit ;;
            *) die "Unknown option $opt" ;;
        esac
    done

    
}

die () {
    echo "$*" >&2
    exit 1
}

main "$@"
