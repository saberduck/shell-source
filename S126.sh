#!/bin/bash

# --- COMPLIANT SNIPPETS ---

# Simple if-elif-else
if [ "$a" -eq 1 ]; then
  echo "a is 1"
elif [ "$a" -eq 2 ]; then
  echo "a is 2"
else
  echo "a is something else"
fi

# Multiple elifs with else
if [ "$b" -gt 0 ]; then
  echo "b > 0"
elif [ "$b" -eq 0 ]; then
  echo "b == 0"
elif [ "$b" -lt 0 ]; then
  echo "b < 0"
else
  echo "b is not a number"
fi

# Nested if-elif-else
if [ "$c" -eq 1 ]; then
  echo "c is 1"
elif [ "$c" -eq 2 ]; then
  if [ "$d" -eq 3 ]; then
    echo "d is 3"
  elif [ "$d" -eq 4 ]; then
    echo "d is 4"
  else
    echo "d is something else"
  fi
else
  echo "c is something else"
fi

# Single if (compliant by default, but included for completeness)
if [ "$single" -eq 1 ]; then
  echo "single is 1"
fi

# if-else (no elif, so not subject to rule)
if [ "$other" -eq 1 ]; then
  echo "other is 1"
else
  echo "other is not 1"
fi

# Inline if-elif-else
if [ $a -eq 1 ]; then echo 1; elif [ $a -eq 2 ]; then echo 2; elif [ $a -eq 3 ]; then echo 3; else echo $a; fi

# --- NON-COMPLIANT SNIPPETS ---

# if-elif without else
if [ "$x" -eq 1 ]; then
  echo "x is 1"
elif [ "$x" -eq 2 ]; then # Noncompliant
  echo "x is 2"
fi

# Multiple elifs, no else
if [ "$y" -gt 0 ]; then
  echo "y > 0"
elif [ "$y" -eq 0 ]; then
  echo "y == 0"
elif [ "$y" -lt 0 ]; then # Noncompliant
  echo "y < 0"
fi

# Nested if-elif without else in inner block
if [ "$z" -eq 1 ]; then
  echo "z is 1"
elif [ "$z" -eq 2 ]; then
  if [ "$w" -eq 3 ]; then
    echo "w is 3"
  elif [ "$w" -eq 4 ]; then # Noncompliant
# ^^^^
    echo "w is 4"
  fi
else
  echo "z is something else"
fi

# Inline if-elif without else
if [ $a -eq 1 ]; then echo 1; elif [ $a -eq 2 ]; then echo 2; fi # Noncompliant
#                             ^^^^

# Inline if-elif-elif without else
if [ $a -eq 1 ]; then echo 1; elif [ $a -eq 2 ]; then echo 2; elif [ $a -eq 3 ]; then echo 3; fi # Noncompliant
#                                                             ^^^^
