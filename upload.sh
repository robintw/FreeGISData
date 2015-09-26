cd "/Users/robin/code/FreeGISData/"
a=$(date "+%e %B %Y")
echo $a

sed -E "s|\<p\>This list was last updated on.+\</p\>|\<p\>This list was last updated on $a.\</p\>|g" index.html > upload.html

scp upload.html robintw@rtwilson.com:~/freegisdata.rtwilson.com/index.html
