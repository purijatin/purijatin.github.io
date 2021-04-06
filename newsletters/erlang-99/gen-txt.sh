#/bin/sh
rm -rf txt/
mkdir txt/
cp solutions/*.erl txt/
cd txt/
rename 's/.erl$/.erl.txt/' *.erl
cd ..
