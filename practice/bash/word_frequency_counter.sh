declare -A freq

while read -a line; do
	for i in "${line[@]}"; do ((freq[$i]+=1)); done
done < $1

for word in "${!freq[@]}"; do
	echo "$word: ${freq[$word]}"
done
