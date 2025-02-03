# Viral co-infection
* https://github.com/CC-Ang

```
CENTRIFUGE:
27852649 R. ..M.c 100 4 2016 709 6 28 au[04](Daehwan Kim)
Centrifuge: rapid and sensitive classification of metagenomic sequences.

VIRALTRACK:
32479746 R. HAM.c  99 4 2020 340 2 64 au[15](Pierre Bost)
Host-Viral Infection Maps Reveal Signatures of Severe COVID-19 Patients.

VIRTUS:
33017003 R. H.M..  47 2 2021  12 0 13 au[04](Yoshiaki Yasumizu)
VIRTUS: a pipeline for comprehensive virus analysis from conventional RNA-seq data.
```

# Viral-Track
* Performs comprehensive mapping of scRNA-seq data onto a large database of known viral genomes
* Provides precise annotation of the cell types associated with viral infections
* Integrates this data with the host transcriptome
* Enables transcriptional sorting of the viral-infected cells compared to bystander cells
* Enables differential profiling of the viral-infected cells compared to bystander cells
* Uses a new statistical approach for differential gene expression between infected and bystander cells
  * To recover virus-induced programs and reveal key host factors required for viral replication
## Demonstrated in:
* Several in vivo mouse models of infection
* Human samples of hepatitis B virus (HBV) infection
## scRNA pipelines
* All scRNA-seq pipelines align sequenced reads to the expressed part of a reference host genome
* scRNA-seq pipelines commonly discard:
  * irrelevant reads
  * representing other organisms
  * primers
  * adaptors
  * template switching oligonucleotides
  * other contaminants
## Viral reads:
* Are highly repetitive 
* Generate substantial sequencing artifacts
## Viral-Track filters viral reads to limit false positives based on:
* read mapping quality
* nucleotide composition
* sequence complexity
* genome coverage
## Uses:
* STAR Aligner:
  * Highly cited:
    TOP 23104886 R. H.M.c 100 4 2013 28313 306  21 au[09](Alexander Dobin)
    STAR: ultrafast universal RNA-seq aligner
  * STAR Aligner maps to both:
    * Host reference genome 
    * Extensive list of high-quality viral genomes (but limited)
      * viruSITE-integrated database for viral genomics
        TOP 28025349 R. ..M..  59 2 2016    38  0  24 au[03](Matej Stano)

# Genomic Data Commons
* Uses 341 stars [Common Workflow Language](https://github.com/common-workflow-language/cwltool)
* [Genomic Data Commons](https://gdc.cancer.gov/)
* [GDC Portal](https://portal.gdc.cancer.gov/analysis_page?app=CohortBuilder&tab=general)
* [Uniform genomic data analysis in the NCI Genomic Data Commons](https://www.nature.com/articles/s41467-021-21254-9)
* [GitHub](https://github.com/NCI-GDC)

# GOAL: justify spatial transcriptomics of samples at SKCCC

1. Find Pt transcriptomes that are co-infected with HIV, HBV, HCV, and EBV
2. Check if several redox enzymes that are present in many cancers are significantly upregulated in these Pt transcriptomes

# Virtus
* TOP 33017003 R. H.M..  47 2 2021    12  0  13 au[04](Yoshiaki Yasumizu)
  VIRTUS: a pipeline for comprehensive virus analysis from conventional RNA-seq data.
* 34 stars, https://github.com/yyoshiaki/VIRTUS
* 13 stars, https://github.com/yyoshiaki/VIRTUS2


# Virtus used in 2022 Nature paper
CIT 35869073 R. H.M.c  87 3 2022    28  1  72 au[22](Yoshiaki Yasumizu)
Myasthenia gravis-specific aberrant neuromuscular gene expression by medullary thymic epithelial cells in thymoma.

## Comprehensive virus detection from bulk RNA-seq
The comprehensive viral quantification of RNA-seq
was performed by a bioinformatics pipeline;
VIRTUS65 (v1.2.1), which was composed of
fastp, STAR, and Salmon.
First, we created indices using
createindex.cwl with references downloaded from Gencode v33.
Then, we quantified viruses using
VIRTUS.PE.cwl with options–hit_cutoff 0–kz_threshold 0.3.



# Notes
Centrifuge states that it can be run on home computer
IC: transcriptomic data: What cancer cell disregulated from normal
spectral flow-cytometer grant just got awarded
El Hadad
21st 1pm T Next meeting
