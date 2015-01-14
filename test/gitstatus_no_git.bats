#!/usr/bin/env bats

gitstatus=${BATS_TEST_DIRNAME}/../gitstatus.sh

@test "Running gitstatus.sh" {
  pushd "$BATS_TMPDIR"
  run ${gitstatus}
  [ "$status" -eq 0 ]
  echo "$output" >&2
  [ "$output" == "" ]
  popd
}

# vim:ft=sh:
