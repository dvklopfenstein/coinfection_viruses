MAKEFLAGS := --no-print-directory

virus_search:
	@make virtus
	@make viraltrack
	@make centrifuge
	@echo "------------------------------------------------------------"
	@echo CITING PAPER OF THREE TECHNIQUES
	# H.M.c 100 4 2021   383  2 179 au[23](Andrew C Yang) Dysregulation of brain and choroid plexus cell types in severe COVID-19.
	icite 34153974

# The VIRTUS (Viral Transcript Usage Sensor) pipeline 
# composed of fastp, STAR, and Salmon
# detects and quantifies mRNA transcripts in the data of traditional human RNA-seq data to identify:
# * the cells sheltering activated viruses and not the copy number of the virus, 
# * the composition of multiple viruses in a cell, and 
# * the expression differences between infected and uninfected cells.
virtus:
	@echo "------------------------------------------------------------"
	@echo "VIRTUS"
	icite 33017003 -c | sort -k6
	@#icite 33017003 -l
	icite 33017003

viraltrack:
	@echo "------------------------------------------------------------"
	@echo VIRAL-TRACK: globally scans unmapped single-cell RNA sequencing scRNA-seq data for the presence of viral RNA
	@#icite 32479746 -l
	icite 32479746

centrifuge:
	@echo "------------------------------------------------------------"
	@echo CENTRIFUGE: RAPID AND SENSITIVE CLASSIFICATION OF METAGENOMIC SEQS
	@#icite 27852649 -l
	icite 27852649

.PHONY: data
data:
	find data -type f

mail:
	find doc/email -type f | sort

sent:
	grep -nw --color -E "(From|Sent):" doc/email/*.md

# $ docker version
#   Client: Docker Engine - Community
#    Version:           27.3.1
#    API version:       1.47
#    Go version:        go1.22.7
#    Git commit:        ce12230
#    Built:             Fri Sep 20 11:41:00 2024
#    OS/Arch:           linux/amd64
#    Context:           default
#   permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.47/version": dial unix /var/run/docker.sock: connect: permission denied
#
# $ which docker
#   /usr/bin/docker
docker_installed:
	docker version
	which docker

