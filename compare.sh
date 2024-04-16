#!/bin/bash

# Check that the command-line arguments are provided
if [ $# -lt 2 ]; then
  echo "Error: Missing command-line arguments"
  echo "Usage: $0 <command-to-run> <expected-output>"
  exit 1
fi

# Extract the command to run and expected output from the command-line arguments
command_to_run="$1"
expected_output="$2"

# Run the command and capture the output
output=$(eval "$command_to_run")

# Compare the output with the expected output
if [ "$output" != "$expected_output" ]; then
  echo "Error: Output does not match expected output"
  exit 1
fi

# If the output matches the expected output, print a success message
echo "Success: Output matches expected output"
