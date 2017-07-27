test: Trans CLEVR.pgf lines.txt
	./run.sh lines.txt

Trans:
	ghc Trans.hs

CLEVR.pgf:
	gf --make CLEVREng.gf

lines.txt:
	./preprocess.py CLEVR_v1.0/questions/CLEVR_test_questions.json > lines.txt

clean:
	rm Trans Trans.o Trans.hi
	rm *.gfo
	rm *.pgf
	rm lines.txt
