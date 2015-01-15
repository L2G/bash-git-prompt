#!/usr/bin/env bats

load test_helpers

@test "${gitstatus_basename} with no Git repo" {
  pushd "$BATS_TMPDIR"
  run ${gitstatus}
  [ "$status" -eq 0 ]
  echo "$output" >&2
  [ "$output" == "" ]
  popd
}

# vim:ft=sh:
