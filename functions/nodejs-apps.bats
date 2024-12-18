#!/usr/bin/env bats

load nodejs-apps.bash
load helpers.bash

setup_file() {
  export BASEDIR="${BATS_TEST_DIRNAME}/.."
}

teardown_file() {
  unset BASEDIR
}

@test "installation-zigbee2mqtt_install" {
  echo -e "# ${COL_CYAN}$(timestamp) [openHABian] Zigbee2MQTT installation starting...${COL_DEF}" >&3
  run zigbee2mqtt_setup "install" 3>&-
  if [ "$status" -ne 0 ]; then echo "$output" >&3; fi
  [ "$status" -eq 0 ]
  echo -e "# ${COL_GREEN}$(timestamp) [openHABian] Zigbee2MQTT installation successful.${COL_DEF}" >&3
}
