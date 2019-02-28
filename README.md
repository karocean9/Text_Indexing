<h3>Text_Indexing</h3>

BigData is the term mostly used in thie era. Data is coming from different sources and there is not enough time for the data to be processed. In this repository I took a bunch of documents and did some cleansing and processing of data and represented that in the form of Inverted Index. I used shell and perl scripts for this. 

Prerequisites
Unix, Mac O.S.

For Windows
Install Cygwin or Gitbash 

Code Breakdown

i=0                              // initializing a variable to zero for the loop to iterate

for entry in 2009/*              // for loop initialization in the folder 2009 containing all files

tr [A-Z] [a-z]                   // Transforming capital letters to small letters

tr -cs "a-z_" " "                // Transforming all the special characters and symbols with a space

tr " " "\n"                      // Trasforming spaces to new line

sort                             // Name implies sorting them 

uniq -c                         // Counting all the unique words

sort -nr >                      // Sorting the words in the reverse order i.e from highest to lowest 

Perl.sh

MYREGEX=\\b\(`perl -pe 's/\n/|/g' $1`\)\\b        // This is perl regular expression it compares two files and removes whatever is present in file $2 with the file $1 
 perl -pe "s/$MYREGEX//g" $2 
 

./perl.sh stopwords.txt output_1/$i.txt | tr -s "\n" | grep [[:alpha:]] > output_2/$i.txt     // In this the perl.sh script is getting executed by taking output_1/$i.txt and stopwords.txt file 

grep [[:alpha:]]                 // Here the spaces are removed and alpha-numeric values are removed along with the spaces


# Code
```
i=0
for entry in 2009/*
do
        cat "$entry"| tr [A-Z] [a-z] | tr -cs "a-z_" " " | tr " " "\n" | sort | uniq -c | sort -nr > output_1/$i.txt
        ./perl.sh stopwords.txt output_1/$i.txt | tr -s "\n" | grep [[:alpha:]] > output_2/$i.txt
        i=$((i+1))
done
```

License

This project is licensed under the MIT License - see the LICENSE.md file for details

Acknowledgments

Ischool 
