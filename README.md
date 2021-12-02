# Bash Exercises
<p><em>parse_txt.sh</em> - takes text file of special format as an argument and prints filenames from 1st column with owner's user ID of appropriate file, separated from name by semicolon or 'not exists' if file does not exist.
<pre>
Example of text_file:
  f5;server1
  /var/www/html/index.html;server2
  /var/www/html/f1;server1
Example of output:
  f5;not exists
  /var/www/html/index.html;0
  /var/www/html/f1;1000
</pre>
</p>
<p><em>reverse_args.sh</em> - takes arguments, reverses each one of them and prints them in one row.
<pre>
Example of input: a ab abc
Example of output: a ba cba
</pre>
</p>
