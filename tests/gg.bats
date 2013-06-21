#!/usr/bin/env bats

load test_helper

@test "blank invocation without configuration goes to home directory" {
  mock_home
  gg
  assert_pwd "$MOCK_HOME"
}
