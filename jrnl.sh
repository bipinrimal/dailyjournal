set -e 
#Exit immediately if a command exits with a non-zero status.

#Catch Year (Format: YYYY), month (Format: 01_Jan) and date (Format: Jan_01)
YR=$(date +%Y)
MNTH=$(date +%m_%b)
DAY=$(date +%b_%d)

#The name of the daily markdown file. It will be in Jan_01.md format.
#The Directory ($DIR) will be added using the install.sh

FN="$DIR"/$YR/$MNTH/${DAY}.md

#Create the journal markdown file. 
#The per day file will be generated within month subfolder of year folder, only if not present. 
if [[ ! -e "$FN" ]]; then
        mkdir -p "$DIR"/$YR/$MNTH
        touch "$FN"
fi

#If opening journal first time, it adds the Day as the title and puts a time stamp. 
#If opened the same day, it adds another time stamp for the time it is opened.
if [ -s "$FN" ]
then
        echo "#### $(date +%I:%M" "%p)" >>"$FN"
else
        echo "## $(date +%B" "%d)" >"$FN"
        echo "#### $(date +%I:%M" "%p)" >>"$FN"
fi

#Opens the file to edit. Can use other softwares to open
vim "$FN"
