#!/bin/sh

/bin/rm -rf git-example-log

mkdir git-example-log

cd git-example-log

touch data.dat
touch analysis.R

git init

git add data.dat analysis.R
git commit --date="2010-05-28:15:37" -m "my test data and analysis"

echo "change 1" >> data.dat

git commit --date="2010-05-28:16:29" -am "re-test"

echo "change 2" >> data.dat
git commit --date="2010-05-28:17:43" -am "re-re-test"

echo "change 3" >> data.dat
git commit --date="2010-05-28:19:17" -am "callibrate"

echo "data go bye bye" > data.dat
git commit --date="2010-05-28:19:20" -am "huh?"

echo "YOU SHALL NOT PASS!" > data.dat
git commit --date="2010-05-28:21:58" -am "WTF"

echo "data is back, but what is it?" > data.dat
git commit --date="2010-05-29:00:37" -am "aaarrgh"

echo "data is back, but what is it?" >> data.dat
git commit --date="2010-05-29:02:40" -am "#\$@*&!!"

echo "more bad data" >> data.dat
git commit --date="2010-05-29:03:22" -am "crap"

echo "1,2,3" > data.dat
git commit --date="2010-05-29:04:16" -am "notbad"

echo "5,6,7" >> data.dat
git commit --date="2010-05-29:04:47" -am "woohoo!!"

echo "1,1,1,2,2,3,4,5,7,9,16,..." >> data.dat
git commit --date="2010-05-29:04:47" -am "USETHISONE"

touch notes_metting_with_prof_smith.txt
git add notes_metting_with_prof_smith.txt
git commit --date="2010-05-29:11:38" -m "Add notes from meeting with Prof Smith"

echo "" >> data.dat
git commit --date="2010-05-30:08:37" -am "Starting over"
