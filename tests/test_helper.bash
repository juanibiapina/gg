load assertions

load ../lib/gg

GG_TEST_DIR="${BATS_TMPDIR}/gg"

teardown() {
  rm -rf "GG_TEST_DIR"
}

mock_home() {
  local MOCK_HOME="${GG_TEST_DIR}/home/user"
  mkdir -p "$MOCK_HOME"
  export HOME="$MOCK_HOME"
}
