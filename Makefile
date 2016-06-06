.PHONY: clean

main: main.c
	ghc -dynamic -o main main.c -no-hs-main -package-db dist/package.conf.inplace -package embedded-haskell

clean:
	rm main main.o
