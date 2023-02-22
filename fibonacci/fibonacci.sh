#!/bin/bash

# Calculating and printing Fibonacci numbers 
function fibonacci {
  a=0
  b=1
  
  echo $a
  echo $b

  for (( i=0; i<$1; i++ ))
  do
      fn=$((a + b))
      echo $fn
      a=$b
      b=$fn
  done
}
 
fibonacci 20
