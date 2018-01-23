a.txt : b.txt c.txt
	cat b.txt c.txt > a.txt
b.txt : 
	echo "I love " > b.txt
c.txt : 
	echo "ouyangqing" > c.txt
.PHONY : clean
clean : 
	rm *.txt
