#!/usr/bin/env sh

if [ -f Gemfile ]; then
    bundle install
fi

command=$(echo "$@" | awk '{print $1;}')
options=${@##$command}
case $command in
    'serve')
        command="serve $options --host 0.0.0.0"
        ;;
    *)
        command="$command $options"
esac

eval "jekyll $command"
