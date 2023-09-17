#!/bin/bash

# Function to calculate the binomial coefficient
function binom {
  if [ $2 -eq 0 ] || [ $2 -eq $1 ]; then
    echo 1
  else
    echo $(( $(binom $(($1-1)) $(($2-1))) + $(binom $(($1-1)) $2) ))
  fi
}

# Get the number of rows from the user
echo "Enter the number of rows in Pascal's triangle: "
read rows

# Loop through each row
for (( i=0; i<$rows; i++ )); do
  # Loop through each element in the row
  for (( j=0; j<=$i; j++ )); do
    # Calculate the binomial coefficient and print
    val=$(binom $i $j)
    echo -n "$val "
  done
  # Move to next row
  echo ""
done

