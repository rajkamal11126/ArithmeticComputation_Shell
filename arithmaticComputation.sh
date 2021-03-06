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

sorting1=($(echo ${compute[@]} | tr " " "\n" | sort -nr))
echo "Descending Order: ${sorting1[@]}"
sorting2=($(echo ${compute[@]} | tr " " "\n" | sort -n))
echo "Ascending Order: ${sorting2[@]}"
