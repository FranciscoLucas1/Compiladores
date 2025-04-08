# Nome do executável
PROG = linguagem

# Arquivo fonte do FLEX
LEX = linguagem.l

# Comandos
all:
	flex $(LEX)
	gcc lex.yy.c -o $(PROG) -lfl
	./linguagem

run: all
	./$(PROG)

clean:
	rm -f lex.yy.c $(PROG)