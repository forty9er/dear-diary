#!./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "single word with no stopwords returns same word" {
  skip "no stopwords is not a valid scenario"
  run bash top_ten.sh -d "bob" -s " "
  assert_output "bob"
}

@test "single word with different stopwords returns same word" {
  run bash top_ten.sh -d "bob" -s "bert"
  assert_output "bob"
}

@test "single word also included in stopwords returns nothing" {
  run bash top_ten.sh -d "bob" -s "bob"
  assert_output ""
}