mkdir -p output
today=$(date +"%Y%m%d")
weekago=$(date -d "7 days ago" +"%Y%m%d")
echo $today, $weekago
for i in $(ls); do
	if [[ $i =~ [[:alpha:]]*[[:digit:]]{8}\.jpg ]]; then
		name=${i:0:-4}
		date=${i:$((${#i}-12)):-4}
		date=${date:4}${date:2:2}${date:0:2}
		if [[ $date = $today ]]; then
			cp $i output/${name}_today.jpg
		elif [[ $date -lt $today && $date -ge $weekago ]]; then
			cp $i output/${name}_weekold.jpg
		elif [[ $date -lt $weekago ]]; then
			cp $i output/${name}_quiteold.jpg
		fi
	fi
done



