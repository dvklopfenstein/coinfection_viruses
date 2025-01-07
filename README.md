# Viral co-infection

GOAL: justify spatial transcriptomics of samples at SKCCC

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
