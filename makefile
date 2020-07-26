all: README.md

README.md: guessinggame.sh
	echo "# Guessing game" > README.md
	echo "This program will continuously ask you to guess the number of files in the current directory, until you guess the correct number.\n" >> README.md
	echo "Start: \`bash guessinggame.sh\`" >> README.md
	echo "## Details" >> README.md
	echo "\`Make\` was run at " >> README.md
	date >> README.md
	echo "\nThe number of lines of code contained in \`guessinggame.sh\` is " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "## Acknowledgments" >> README.md
	echo "This project was created during the course [The Unix Workbench](https://www.coursera.org/learn/unix/home/welcome). Thanks to [Sean Kross](http://seankross.com/) for the introduction to Unix." >> README.md

