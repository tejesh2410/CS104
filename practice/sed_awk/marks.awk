BEGIN{
	FS = ","
	OFS = "\t"
}
NR==1{
	for(i=1; i <= NF; i++){
		printf "%s\t", $i
	}
	printf "Average\n"
}
NR!=1{
	sum=0
	printf "%s\t", $1
	for(i=2; i <= NF; i++){
		sum+=$i
		printf "%d\t", $i
	}
	avg=sum/(NF-1)
	printf "%.2f\n", avg
}

