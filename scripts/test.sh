#! /bin/bash

mkdir -p $TEST_RESULT_DIR
JEST_JUNIT_OUTPUT=$TEST_RESULT_DIR/junit.xml yarn test --ci --testResultsProcessor="jest-junit"