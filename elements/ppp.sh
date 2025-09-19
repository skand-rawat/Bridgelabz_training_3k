#!/bin/bash
# =========================================
# Level 2 Practice Programs in Bash
# Following Best Programming Practices
# Without Menu – Sequential Execution
# =========================================

# Function 1: Basic Calculator
basic_calculator() {
    echo "Enter first number:"
    read number1
    echo "Enter second number:"
    read number2

    addition=$(echo "$number1 + $number2" | bc)
    subtraction=$(echo "$number1 - $number2" | bc)
    multiplication=$(echo "$number1 * $number2" | bc)
    division=$(echo "scale=2; $number1 / $number2" | bc)

    echo "The addition, subtraction, multiplication, and division value of 2 numbers $number1 and $number2 is $addition, $subtraction, $multiplication, and $division"
}

# Function 2: Area of Triangle in sq cm and sq inches
area_of_triangle() {
    echo "Enter base in cm:"
    read base
    echo "Enter height in cm:"
    read height

    area_cm=$(echo "0.5 * $base * $height" | bc)
    area_in=$(echo "scale=2; $area_cm / 6.4516" | bc)

    echo "The Area of the triangle in sq cm is $area_cm and sq in is $area_in"
}

# Function 3: Side of Square from Perimeter
side_of_square() {
    echo "Enter perimeter of the square:"
    read perimeter
    side=$(echo "$perimeter / 4" | bc)
    echo "The length of the side is $side whose perimeter is $perimeter"
}

# Function 4: Distance in Yards and Miles
distance_conversion() {
    echo "Enter distance in feet:"
    read distanceInFeet

    yards=$(echo "$distanceInFeet / 3" | bc)
    miles=$(echo "scale=2; $yards / 1760" | bc)

    echo "The distance in yards is $yards while the distance in miles is $miles"
}

# Function 5: Total Purchase Price
total_purchase_price() {
    echo "Enter unit price of the item:"
    read unitPrice
    echo "Enter quantity:"
    read quantity

    totalPrice=$(echo "$unitPrice * $quantity" | bc)

    echo "The total purchase price is INR $totalPrice if the quantity $quantity and unit price is INR $unitPrice"
}

# Function 6: Quotient and Remainder
quotient_and_remainder() {
    echo "Enter first number:"
    read number1
    echo "Enter second number:"
    read number2

    quotient=$(echo "$number1 / $number2" | bc)
    remainder=$(echo "$number1 % $number2" | bc)

    echo "The Quotient is $quotient and Remainder is $remainder of two numbers $number1 and $number2"
}

# Function 7: Integer Operations
int_operations() {
    echo "Enter integer a:"
    read a
    echo "Enter integer b:"
    read b
    echo "Enter integer c:"
    read c

    result1=$(echo "$a + $b * $c" | bc)
    result2=$(echo "$a * $b + $c" | bc)
    result3=$(echo "$c + $a / $b" | bc)
    result4=$(echo "$a % $b + $c" | bc)

    echo "The results of Int Operations are: $result1, $result2, $result3, $result4"
}

# Function 8: Double Operations
double_operations() {
    echo "Enter double a:"
    read a
    echo "Enter double b:"
    read b
    echo "Enter double c:"
    read c

    result1=$(echo "scale=2; $a + $b * $c" | bc)
    result2=$(echo "scale=2; $a * $b + $c" | bc)
    result3=$(echo "scale=2; $c + $a / $b" | bc)
    result4=$(echo "scale=2; $a % $b + $c" | bc)

    echo "The results of Double Operations are: $result1, $result2, $result3, $result4"
}

# =========================================
# Sequential Execution of All Functions
# =========================================

echo -e "\n===== Problem 1: Basic Calculator ====="
basic_calculator

echo -e "\n===== Problem 2: Area of Triangle ====="
area_of_triangle

echo -e "\n===== Problem 3: Side of Square ====="
side_of_square

echo -e "\n===== Problem 4: Distance Conversion ====="
distance_conversion

echo -e "\n===== Problem 5: Total Purchase Price ====="
total_purchase_price

echo -e "\n===== Problem 6: Quotient and Remainder ====="
quotient_and_remainder

echo -e "\n===== Problem 7: Integer Operations ====="
int_operations

echo -e "\n===== Problem 8: Double Operations ====="
double_operations

echo -e "\n===== ✅ All Level 2 Problems Solved Sequentially! ====="
