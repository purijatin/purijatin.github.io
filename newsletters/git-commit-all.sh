#/bin/sh
cd erlang-99;./gen-txt.sh;cd ..;git add *; git commit * -m 'erl'; git push origin master
