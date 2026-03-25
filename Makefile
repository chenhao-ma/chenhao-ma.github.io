JEMDOC := ./jemdoc
CONF := mysite.conf
DOCS := index research team recruit publications teaching service honors

HDOCS := $(addsuffix .html, $(DOCS))

.PHONY : docs
docs : $(HDOCS)

.PHONY : update
update : $(HDOCS)
	chmod 604 $(HDOCS)

%.html : %.jemdoc MENU $(CONF) $(JEMDOC)
	$(JEMDOC) -c $(CONF) $*

.PHONY : clean
clean :
	@echo 'No temporary build artifacts to clean.'
