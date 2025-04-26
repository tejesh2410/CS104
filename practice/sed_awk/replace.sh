para=$(cat $2)
awk -F: -v format="$para" '{line=format; gsub("student_name", $1, line); gsub("roll_no", $2, line); print line; print "";}' $1
