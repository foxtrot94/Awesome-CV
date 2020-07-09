
SUBJECT:=jefz

resume:
	cd "$(CURDIR)"/"$(SUBJECT)"/; xelatex resume.tex;
	cd ..

single: resume
	cd "$(CURDIR)"/"$(SUBJECT)"/; pdfjam resume.pdf 1 --outfile one_page.pdf;
	cd ..

test:
	cd examples/ ; for f in *.tex; do xelatex $$f; done

clean:
	rm $(CURDIR)/$(SUBJECT)/*.out
	rm $(CURDIR)/$(SUBJECT)/*.log
	rm $(CURDIR)/$(SUBJECT)/*.aux
