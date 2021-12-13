expr: 
	yacc -d $(FILEN).y
	lex $(FILEN).l
	gcc lex.yy.c y.tab.c -o $(FILEN)

clean:
	rm lex.yy.c y.tab.c y.tab.h