target=$1
arr=("${@:2}")
found=0

for i in "${arr[@]}"; do
if [[ $i -eq target ]]; then
found=1
fi
done

if [[ $found -eq 1 ]]; then
echo "YES"
else
echo "NO"
fi

merge () {
	start1=$1
	end1=$2
	start2=$3
	end2=$4
	
}

temparr=($(for i in "${arr[@]}"; do echo $i; done | sort -n))
binarysearch () {
	lenght=${#temparr[@]}
	mid=$((lenght/2))
	if [[ $lenght -eq 0 ]];then
		echo "NO"
	elif [[ ${temparr[$mid]} -eq target ]]; then
		echo "YES"
	elif [[ ${temparr[$mid]} -lt target ]]; then
		temparr=("${temparr[@]:$((mid+1))}")
		binarysearch
	else
		temparr=("${temparr[@]:0:$mid}")
		binarysearch
	fi
}

binarysearch
