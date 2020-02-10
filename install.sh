#Catch if error
set -e

#Get installation directory. 
DIR=$PWD

# If the script present, adds the directory information.
if test -f "$DIR/jrnl.sh";
then
        echo "DIR=\"${DIR}"\" | cat - jrnl.sh > temp && mv temp jrnl.sh
else
        echo "Script does not exist."
fi
