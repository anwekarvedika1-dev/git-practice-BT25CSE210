#!/bin/bash
echo "Enter your name:"
read name
if [ -z "$name" ]; then
  echo "Hello, stranger! You did not enter a name."
else
  echo "Hello, $name! Welcome to Git practice."
fi
