#! /bin/bash
#tells the parent shell which interpreter to use in interpreting the script
#A SYMLINK is simply a shortcut to another file or folder

#ECHO COMMAND
# echo Hello World! 

#Uppercase, letters, numbers, underscore
# NAME="Harishm"
# echo My name is $NAME
# echo "${NAME} is good girl"

#USER INPUT
# read -p "Enter your name: " URNAME
# echo $URNAME

#SIMPLE IF STATEMENT
# if [ "$NAME" == "Harishma" ]
# then
#  echo "Your name is Harishma"
# fi

#IF-ELSE
# if [ "$NAME" == "Harishma" ]
# then
#  echo "Your name is Harishma"
# else 
#  echo "Your name is not Harishma"
# fi

#ELSE-IF (elif)
# if [ "$NAME" == "Harishma" ]
# then
#  echo "Your name is Harishma"
# elif [ "$NAME" == "Harishm" ]
# then
#  echo "Your name is Harishm"
# else 
#  echo "Your name is not Harishma"
# fi

#-eq, -ne, -gt,-ge,-lt,-le
# NUM1=2
# NUM2=3
# if [ "${NUM1}" -gt "$NUM2" ]
# then
# echo "$NUM1 is greater than $NUM2"
# else
#  echo "$NUM2 is greater than $NUM1"
# fi

# FILE CONDITIONS
# FILE="test.txt"
# if [ -e "$FILE" ]
# then
#   echo "$FILE exists"
# else
#   echo "$FILE does NOT exist"
# fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

#CASE STATEMENT
# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in 
#   [yY] | [yY][eE][sS])
#     echo "You can have a beer :)"
#     ;;
#   [nN] | [nN][oO])
#     echo "Sorry, no drinking"
#     ;;
#   *)
#     echo "Please enter y/yes or n/no"
#     ;;
# esac

# # SIMPLE FOR LOOP
# NAMES="Brad Kevin Alice Mark"
# for NAME in $NAMES
#   do
#     echo "Hello $NAME"
# done

# # FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES  
#   do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
#   do
#     echo "$LINE: $CURRENT_LINE"
#     ((LINE++))
# done < "./new-1.txt"

# FUNCTION
# function sayHello() {
#   echo "Hello World"
# }
# sayHello

# FUNCTION WITH PARAMS
function greet() {
  echo "Hello, I am $1 and I am $2"
}

greet "Harishma" "24"

# CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"