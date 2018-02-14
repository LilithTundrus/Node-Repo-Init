#!/usr/bin/env bats


@test "invoking shoul return 0 code" {
  run ./initrepo.sh
  [ "$status" -eq 0 ]
}