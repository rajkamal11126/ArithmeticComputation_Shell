#! /bin/bash -x

echo "enter the value of a: "
read a
echo "enter the value of b: "
read b
echo "enter the value of c: "
read c


compute=$((a+b*c))
compute=$((a*b+c))
compute=$((a+b/c))
