#! /bin/bash
 MYREGEX=\\b\(`perl -pe 's/\n/|/g' $1`\)\\b
 perl -pe "s/$MYREGEX//g" $2
