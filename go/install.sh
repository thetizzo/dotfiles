#!/bin/sh
#
# Gobrew

if test ! $(which gobrew)
then
  echo "  Installing gobrew, a go version manager, for you."
  curl -sLk https://raw.githubusercontent.com/kevincobain2000/gobrew/master/git.io.sh | sh
fi

exit 0