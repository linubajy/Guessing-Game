readme:
	touch README.md
	echo "Title : Peer-graded Assignment: Bash, Make, Git, and GitHub">>README.md
	echo "\nDate:">>README.md; date >>README.md
	echo "\nNumber of lines of code in guessinggame.sh :">>README.md; cat guessinggame.sh | wc -l >>README.md

