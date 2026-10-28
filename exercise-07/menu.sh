[200~#!/bin/bash
while true; do
  echo "1. Greet  2. Add two numbers  3. Even or odd  4. Exit"
  echo "Choose an option:"
  read choice
  case $choice in
    1)
      echo "Enter your name:"
      read name
      echo "Hello, $name!"
      ;;
    2)
      echo "First number:"
      read a
      echo "Second number:"
      read b
      echo "Sum = $((a + b))"
      ;;
    3)
      echo "Enter a number:"
      read n
      if [ $((n % 2)) -eq 0 ]; then
        echo "$n is even"
      else
        echo "$n is odd"
      fi
      ;;
    4)
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done
