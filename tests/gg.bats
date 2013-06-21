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
