#!/bin/bash

while true; do
    echo -e "\n1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Exit"

    read -p "Choose an option: " choice

    case $choice in
        1)
            read -p "Enter two numbers: " a b
            echo "Sum = $((a + b))"
            ;;

        2)
            read -p "Enter two numbers: " a b
            echo "Difference = $((a - b))"
            ;;

        3)
            read -p "Enter two numbers: " a b
            echo "Product = $((a * b))"
            ;;

        4)
            read -p "Enter two numbers: " a b

            if [ "$b" -ne 0 ]; then
                echo "Quotient = $((a / b))"
            else
                echo "Cannot divide by zero"
            fi
            ;;

        5)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice"
            ;;
    esac
done
