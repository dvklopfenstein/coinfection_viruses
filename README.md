# Viral co-infection

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
