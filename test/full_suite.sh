#!/bin/bash

CYAN=`tput setaf 6`
NC=`tput sgr0`

bundle check
bundle_result=$?

if [[ $bundle_result -ne 0 ]]; then
  bundle install
fi

echo ""
echo "${CYAN}Running Bash bats tests.....${NC}"
echo ""
./test/top_ten_test.sh
echo ""
echo ""
echo "${CYAN}Running Ruby rspec tests.....${NC}"
echo ""
rspec test
