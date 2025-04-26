memo=(1 1)
catalan () {
#	if [[ $1 -eq 0 || $1 -eq 1 ]]; then
#		echo 1
#	else
#	i=0
#	sum=0
#	while [[ $i -lt $1 ]]; do
#		((sum+=${memo[$i]:-$(catalan $i)}*${memo[$(($1 - $i - 1))]:-$(catalan $(($1 - $i - 1)))}))
#		((i++))
#	done
#	echo $sum
#	fi
	i=0
	while [[ $i -lt $1 ]]; do
		((i++))
		memo[$i]=0
		j=0
		while [[ $j -lt $i ]]; do
			((memo[$i]+=${memo[$j]}*${memo[$((i-j-1))]}))
			((j++))
		done
	done
	echo ${memo[$1]}
}

catalan $1
