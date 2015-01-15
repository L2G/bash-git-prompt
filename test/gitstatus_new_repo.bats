#!/usr/bin/env bats

gitstatus=${BATS_TEST_DIRNAME}/../gitstatus.sh
git_test_dir="`mktemp -d $BATS_TMPDIR/bash-git-prompt-test.XXXXX`"

setup() {
  pushd "$git_test_dir"
  git init
}

teardown() {
  popd
  [ -d "$git_test_dir" ] && rm -rvf "$git_test_dir"
}

@test "gitstatus with a new, empty Git repo" {
  cd "$git_test_dir"  
  run "${gitstatus}"
  echo "$output" >&2
  [ "${lines[0]}" == "master" ]
  [ "${lines[1]}" == "." ]
  [ "${lines[2]}" -eq 0 ]
  [ "${lines[3]}" -eq 0 ]
  [ "${lines[4]}" -eq 0 ]
  [ "${lines[5]}" -eq 0 ]
  [ "${lines[6]}" -eq 0 ]
  [ "${lines[7]}" -eq 1 ]
}

# vim:ft=sh:
