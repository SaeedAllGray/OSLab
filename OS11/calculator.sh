echo "Operator:"
read operator
echo "Enter the first operand."
read operand1
echo "Enter the second operand."
read operand2
echo ""
if [ $operator = "+" ]
then
    echo $(($operand1 + $operand2))
elif [ $operator = "-" ]
then
    echo $(($operand1 - $operand2))
elif [ $operator = "x" ]
then
    echo $(($operand1 * $operand2))
elif [ $operator = "/" ]
then
    echo $(($operand1 / $operand2))
else
    echo "Invalid operator."
fi
