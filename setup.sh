#!/bin/sh
BASE_DIR=$HOME/dotfiles/
ESCAPED_BASE_DIR=`echo ${BASE_DIR} | sed -e 's/\//\\\\\//g'`
EXCLUDE_DIR=".git"
EXEC_FILE=`basename $0`
find $BASE_DIR -type d -name $EXCLUDE_DIR -prune -o -type f | while read FILE
do
  RELATIVE_PATH=`echo ${FILE} | sed -e "s/${ESCAPED_BASE_DIR}//g"`
  if [ ${RELATIVE_PATH} != ${EXCLUDE_DIR} -a ${RELATIVE_PATH} != ${EXEC_FILE} ]; then
    echo "ln -s $FILE $HOME/${RELATIVE_PATH}"
    rm ${HOME}/${RELATIVE_PATH} > /dev/null 2>&1
    ln -s ${FILE} ${HOME}/${RELATIVE_PATH}
  fi
done
