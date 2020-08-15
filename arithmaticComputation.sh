#! /bin/bash -x

declare -A compute

echo "enter the value of a: "
read a
echo "enter the value of b: "
read b
echo "enter the value of c: "
read c


compute[1]=$((a+b*c))
compute[2]=$((a*b+c))
compute[3]=$((a+b/c))
compute[4]=$((a%b+c))

echo ${compute[@]}

for i in {1..4}
do
	result[$i]=${compute[$i]}
done

echo "Array:"${result[@]}
