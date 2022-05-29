#1/bin/sh
#first part - read file

tr -s '[:blank:]' '[\n*]' < activity11.txt |
  while IFS= read -r word
  do
   echo "$word"
done < activity11.txt

#second part - First had to put each number on a line

cat activity11.txt | tr ' ' '\n' > Newactivity11.txt

sort -nru Newactivity11.txt
echo $sort




