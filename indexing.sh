i=0
for entry in 2009/*
do
        cat "$entry"| tr [A-Z] [a-z] | tr -cs "a-z_" " " | tr " " "\n" | sort | uniq -c | sort -nr > output_1/$i.txt
        ./perl.sh stopwords.txt output_1/$i.txt | tr -s "\n" | grep [[:alpha:]] > output_2/$i.txt
        i=$((i+1))
done
