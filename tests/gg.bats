#!/usr/bin/env bats

load test_helper

@test "blank invocation without configuration goes to home directory" {
  mock_home
  gg
  assert_pwd "$HOME"
}

@test "with an argument without configuration fails with message" {
  run gg invalid
  assert_failure
  assert_output "gg: directory alias 'invalid' not found"
}

@test "with an argument and configuration, cd to that directory" {
  local adir_path="${GG_TEST_DIR}/dirs/dir"
  mkdir -p "$adir_path"
  add_alias "dir" "$adir_path"

  gg dir
  assert_pwd "$adir_path"
}
