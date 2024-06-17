#!/bin/bash

IFS=','
read -ra plugins <<< "$CONNECT_PLUGINS"

rm -rf "$CONNECT_PLUGIN_PATH"/custom/*

for plugin in "${plugins[@]}";
do
  wget -P "$CONNECT_PLUGIN_PATH/custom" "$plugin"
done

exec /etc/confluent/docker/run
