#!/bin/bash

# Initialize variables
num=1
row=1

# Loop through rows
while [ $row -le 4 ]; do
  # Loop through numbers in row
  for (( i=1; i<=$row; i++ )); do
    # Print number and increment
    echo -n "$num "
    num=$((num+1))
  done
  # Move to next row
  echo ""
  row=$((row+1))
done

