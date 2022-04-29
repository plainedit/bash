#!/bin/bash
# CONTRIBUTION
## Author: Tom Sapletta
## Created Date: 25.04.2022

LOGS="logs.txt"


echo "PLAINEDIT takes markdown, evaluates code blocks with interpreters and prints the output of those processes to a different codeblock."
# CONFIG
FILE_IN=$1
FILE_OUT=$2
BASHLINE=
SEPARATOR='```'
SCRIPT_FILE=
FLAGS=
FLAG_HIDE_INPUT=
LANGUAGE=
SCRIPT_HIDE=
FIRST_SEPARATOR_IN_LINE=
ONLY_EXECUTED=
#set -e

# CONFIG
# ./plainedit.sh "2/in.md" "2/out.md" "2/status.md"
FIRST=$1
SECOND=$2
full_path=$(realpath $0)
dir_path=$(dirname $full_path)

## load all params: in out status
if [ "$1" = "--path" ]; then
  dir_path=$2
  IN=$3
  OUT=$4
  FIRST=$3
  SECOND=$4
fi
echo "PATH $dir_path"

# EXAMPLE
# ./plainedit.sh
# START
if [ "$FIRST" = "" ]; then
  for FILE in */in.md; do
    line=$(head -n 1 $FILE)
    #echo "$FILE $line"
    #echo PROTOCOL=${URL%%://*}
    NO=${FILE%%/*}
    echo "$NO. $line"
  done
  exit
fi

# EXAMPLE
# ./plainedit.sh 1
# ./plainedit.sh "1/in.md" "1/out.md" "1/auth.csv"
# START
if [ "$SECOND" = "" ]; then
  IN="$FIRST/in.md"
  OUT="$FIRST/out.md"
  AUTH="$FIRST/auth.md"
else
  IN=$FIRST
  OUT=$SECOND
fi
# EXAMPLE
# ./plainedit "test.md" "test_out.md"
# START
#full_path=$(realpath $0)
#echo $full_path
#dir_path=$(dirname $full_path)
#dir_path=$(dirname $dir_path)
#echo $dir_path
# check if script exist
#PROJECT=OUT
#FILE_OUT=${dir_path}/${PROJECT}/${NEW_FILE}
FILE_IN=${dir_path}/${IN}
FILE_OUT=${dir_path}/${OUT}
echo "IN $FILE_IN"
echo "OUT $FILE_OUT"
#
echo "" > $FILE_OUT
SCRIPT_COUNTER=0

## read line by LINE
while IFS= read -r LINE; do

  # save line by line to new file:
  #FOLDER_NAME=${BRANCH//.git}

  #FLAG_HIDE_INPUT=

  FIRST_SEPARATOR_IN_LINE=

  case $LINE in ${SEPARATOR}*)
     FIRST_SEPARATOR_IN_LINE=1

     LINE_CLEAN=$LINE
     FLAGS=${LINE_CLEAN##*\`}
     IFS=' ' read -r -a array <<< "$FLAGS"
     LANGUAGE="${array[0]}"
     HIDE="${array[1]}"
     HIDE_INPUT="${array[2]}"
     #echo "FLAGS"
     #echo "$FLAGS"
     #echo "$LANGUAGE"
     #echo "$HIDE"

  esac


  #echo "-$SCRIPT_HIDE-"
  #echo "-$ONLY_EXECUTED-"

  # if line started with: ```bash
  if [[ ! -z "$FIRST_SEPARATOR_IN_LINE" ]] && [[ ! -z "$LANGUAGE" ]] && [[ -z "$SCRIPT_HIDE" ]];
  then
      SCRIPT_LANGUAGE=$LANGUAGE
      SCRIPT_HIDE=$HIDE
      #LINE_CLEAN=${LINE//[$'\t\r\n']}
      SCRIPT_TYPE=${FLAGS}
      #echo "$LINE_CLEAN"
      #echo "${SCRIPT_TYPE}"
      ((SCRIPT_COUNTER++))
      #echo $SCRIPT_COUNTER
      SCRIPT_FILE="script/$SCRIPT_COUNTER.$SCRIPT_LANGUAGE"
      HEADER_FILE="#!/bin/${SCRIPT_LANGUAGE}"
      [[ $SCRIPT_LANGUAGE == 'php' ]] && HEADER_FILE="<?php"
      echo "$HEADER_FILE" > $SCRIPT_FILE
      BASHLINE="1"

      if [[ -z "$ONLY_EXECUTED" ]] && [[ -z "$SCRIPT_HIDE" ]];
      then
        echo ""
        echo "$LINE" >> $FILE_OUT
      fi

      #echo "$LINE" >> $FILE_OUT
      continue
  fi


  if [[ -z "$ONLY_EXECUTED" ]] && [[ -z "$SCRIPT_HIDE" ]];
  then
    echo "$LINE" >> $FILE_OUT
  else
    echo "NOT SHOW: $LINE"
  fi

  #echo $BASHLINE

  # if line started with: ```
  if [[ ! -z "$BASHLINE" ]] && [[ $LINE == "${SEPARATOR}" ]];
  then
      BASHLINE=

      if [[ -z "$SCRIPT_HIDE" ]];
      then
      #if [[ -z "$SCRIPT_HIDE" ]] && [[ -z "$SCRIPT_HIDE" ]] || [[ ! -z "$ONLY_EXECUTED" ]]; then
        #echo "EXECUTED: ${SCRIPT_COUNTER}.sh"
        echo "EXECUTED ${SCRIPT_LANGUAGE}:" >> $FILE_OUT
        echo "${SEPARATOR}${SCRIPT_LANGUAGE}" >> $FILE_OUT
        CMD="sh"
        [[ $SCRIPT_LANGUAGE != 'bash' ]] && CMD=$SCRIPT_LANGUAGE
        SCRIPT_CMD="./script/$SCRIPT_COUNTER.$SCRIPT_LANGUAGE"
        [[ $SCRIPT_LANGUAGE == 'php' ]] && SCRIPT_CMD="$CMD script/$SCRIPT_COUNTER.$SCRIPT_LANGUAGE"
        #EXECUTE="$CMD $SCRIPT_FILE"
        echo "$SCRIPT_CMD"
        # Redirected stderr to stdout, stdout to FILE
        { OUTPUT=$( $SCRIPT_CMD 2>>$FILE_OUT 1>&$out); } {out}>>$FILE_OUT
        #echo "" >> $FILE_OUT

        echo -e "\n$SEPARATOR" >> $FILE_OUT
        SCRIPT_HIDE=
        continue
      fi
      SCRIPT_HIDE=

  else

    # if $BASHLINE and NOT HIDE
    if [[ ! -z "$LANGUAGE" ]] && [[ -z "$SCRIPT_HIDE" ]];
    then
      #echo -e "$LINE"
      echo -e "$LINE" >> $SCRIPT_FILE
    fi

  fi


done < $FILE_IN
