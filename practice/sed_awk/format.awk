BEGIN{
	FS=" "
}
NR==1{
	for(i=1;i<=NF; i++){
		printf "%s;", $i	
	}
	printf "Comments\n"
}
NR==2{
	printf "%s;", $1
	for(i=2;i<=NF;i++){
		format[i]="[A-Za-z0-9_]\\"$i
		printf "%s;", $i
	}
	printf "-\n"
}
NR!=1 && NR!=2{
	printf "%s;", $1
	comment="Correct Submission Format"
	for(i=2;i<=NF;i++){
		if($i !~ format[i]){
			comment="Wrong Submission Format"
		}
		printf "%s;", $i
	}
	printf "%s\n", comment
}
