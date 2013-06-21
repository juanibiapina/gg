load assertions

load ../lib/gg

GG_TEST_DIR="${BATS_TMPDIR}/gg"
export GG_ROOT="$GG_TEST_DIR"

GG_CONFIG_FILE="$GG_ROOT/aliases"

teardown() {
  rm -rf "$GG_TEST_DIR"
}

mock_home() {
  local MOCK_HOME="${GG_TEST_DIR}/home/user"
  mkdir -p "$MOCK_HOME"
  export HOME="$MOCK_HOME"
}

add_alias() {
  echo "$1 $2" >> "$GG_CONFIG_FILE"
}
