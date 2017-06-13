# source docker helpers
. util/docker.sh

@test "Start Container" {
  start_container "elasticsearch-test"
}

@test "Verify elasticsearch installed" {
  # ensure elasticsearch executable exists
  run docker exec "elasticsearch-test" bash -c "[ -f /data/bin/elasticsearch ] || [ -f /data/libexec/elasticsearch/elasticsearch ]"

  [ "$status" -eq 0 ]
}

@test "Stop Container" {
  stop_container "elasticsearch-test"
}
