n=$#
swaps=0
i=$((n-1))
j=0
arr=("$@")

while [[ $i -ge 0 ]]; do
	j=0
	while [[ $j -lt $i ]]; do
		if [[ ${arr[$j]} -gt ${arr[$((j+1))]} ]];then
			temp=${arr[$j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
			((swaps++))
		fi
		((j++))
	done
	((i--))
done

echo ${arr[@]}
echo $swaps
