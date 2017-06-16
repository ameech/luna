#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
command=${1:-}
args=${@:2}

case "$command" in
    project:create)
        mkdir $args
        ;;

    task:create)
        cp $script_dir/templates/task.txt $args.txt
        ;;

    search:tags)
        grep -lR "tags: .*$args" .
        ;;
esac
