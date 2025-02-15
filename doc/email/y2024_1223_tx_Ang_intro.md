# Email

# 2024_0113 Data & 2:30pm meeting
```
From: Ang,Charles <cga26@drexel.edu>
Sent: Monday, January 13, 2025 10:25 AM
To: Klopfenstein,Debra <dk497@drexel.edu>
Cc: Chaiken,Irwin <imc23@drexel.edu>
Subject: Re: Connecting, RE: SKCCC HIV and Cancer Pilot Projects
 
Hello,

2:30 PM works for me - at the Zoom link in your invite, I presume?

Primarily, we intend to source data from
NCI's Genomic Data Commons,
much of which is publicly accessible.
I've built a few cohorts based on cancer type and 
downloaded some files using its client tool,
but haven't tinkered further with it,
or feeding those files into VIRTUS or similar, yet.

Other datasets provided to NCBI in publications may also be available,
which can be selected based on the sequencing array used 
(to ensure it has data on the enzymes of interest).

Thanks,
Charles
```

# 2024_1223 Connecting, RE: SKCCC HIV and Cancer Pilot Projects
```
From: Ang,Charles <cga26@drexel.edu>
Sent: Friday, December 20, 2024 2:32 PM
To: Klopfenstein,Debra <dk497@drexel.edu>
Cc: Chaiken,Irwin <imc23@drexel.edu>
Subject: Connecting, RE: SKCCC HIV and Cancer Pilot Projects
 
Hello!

Very sorry for the delay,
I've been working under several deadlines
before and after the holidays and
just got a slice of breathing room.
We met at the SKCCC HIV and Cancer working group meeting,
where I asked for help with programming and statistics.

To reiterate, one of our aims is computational in using a tool, VIRTUS,
to re-screen cancer patient transcriptomes for HIV, HBV, HCV, and EBV co-infection.
We know that several redox enzymes are significantly upgregulated in many cancers,
but want to see if the virus co-infected group is exceptionally so
(which may indicate synergistic exacerbation of both viral infection and cancer progression).
This could then be used to justify spatial transcriptomics of samples at SKCCC.

VIRTUS (PubMed, VIRTUS, VIRTUS 2)
would be the tool to take transcriptome datasets
(downloaded from TCGA or GTEx),
and reprocess for determining which
transcriptome datasets also encode viral proteins
(and hence have viral co-infections).

My programming experience is limited
(C++, Java, complaining about Matlab) and
not very practical to setting up
the kind of file input - screen - output pipeline,
even if conceptually it sounds very straightforward.
(I've been trudging through understanding Docker setup and
distributions when I have time,
if that says anything about how much
I deal with modern program development and deployment.
I can go through VIRTUS' tutorial by rote,
but am leery of trying to learn this
by trial and error on my own computers,
to say nothing of on other workstations.)
Dr. Michael Bouchard was on the initial grant,
who worked more with this programming workflow,
but has since gone to a position at
the Medical University of South Carolina.
I have talked with one of his grad students finishing his project,
but he appears to have dropped VIRTUS from his project scope.

I have appended the Aim 2 section of
our grant proposal below,
which may help understand our goals further.

If you could offer any advice or assistance,
it would be greatly appreciated
(even/especially if it ends up being as simplistic
as "Run this line in the C:/> prompt").

Thanks,
Charles Ang
```

# Aim 2: Evaluate whether redox enzyme transcripts are up-regulated in HIV-infected patients with cancer.
Our initial queries of gene-expression in cancer databases,
such as TCGA and GTEx, via GEPIA2 (12)
indicated statistically significant increases for
PDIA1/3/4/6, TXN, and TXNRD1 between normal and tumor tissue
across HCC, NSCLC, and DLBCL.

However, measurements of TXN and PDI in PLWH have been sparse.
We will specifically evaluate the above PDI and TXN expressions
in cancer samples with and without concurrent HIV diagnoses.

To do this, we will create a computational pipeline using the VIRal Transcript Usage Sensor (VIRTUS) (13),
which screens RNA-seq datasets for known viral transcripts,
to sort TCGA/GTEx datasets and additional transcriptomic datasets
available through NCBI’s Gene Expression Omnibus (GEO) database.

After VIRTUS discrimination of virally-infected and non-infected patients,
datasets will be re-binned for gene expression of PDIA1/3/4/6, TXN and TXNRD1,
determining whether viral infection correlates with
even further elevated redox enzyme levels within the cancer patient population.

This study will focus on the effects of HIV infection,
with secondary examination of the effects of
HBV, HCV, and Epstein-Barr virus (EBV) infection on
redox enzyme expression.

This aim will establish preliminary data justifying parallel
transcriptomic and protein-level studies of SKCC patient samples in
HCC, NSCLC, and DLBCL, both HIV-infected and not.

## Approach, Aim 2

### Stage 1
We will retrieve datasets associated with the TCGA and GTEx,
in addition to publically available datasets in
NCBI’s Gene Expression Omnibus (GEO) for
DLBCL, NSCLC, and HCC,
and feed these into an adapted VIRTUS pipeline (13) to
screen and discriminate cancer RNA-seq datasets
with and without co-presenting HIV infection,
as determined by presence of viral RNA transcripts.
HBV, HCV, and EBV will secondarily be examined from the VIRTUS output,
as it screens for all known viral genomes.

We will focus on retrieval of GPL24676 (Illumina NovaSeq 6000) datasets, or equivalents,
that include quantification of redox enzymes.

This will allow specific correlation of our panel of selected redox enzymes
(PDIA1/3/4/6, TXN, TXNRD1) with infection status.

Initial searching has identified 
datasets on GEO in HCC, NSCLC and DLBCL 
that can be utilized with the VIRTUS pipeline to
identify if HIV/HBV/HCV/EBV-infected subpopulations
exist within these datasets to compare redox enzyme expression levels (25).

Datasets discriminated for infection status will then be re-binned accordingly,
and statistical analyses performed to determine if
**co-presenting HIV infection and cancer result in notably higher redox enzyme expression.**

Based on our hypothesis, we would expect the highest transcription levels in co-infections,
and less elevated levels in single infection samples (relative to healthy controls),
to support enhancement of disease progressions via redox enzymes.

Execution of the adapted VIRTUS pipeline for discrimination, then for re-binning and analysis,
will be performed at the Drexel University Research Computing Facility
using the Picotte high-performance computing cluster.

### Stage 2
If justified by statistically significant data
from the previous analysis of available datasets,
we will seek additional funding opportunities
to perform parallel spatial transcriptomic evaluation and
protein-level enzyme detection assays on de-identified,
archived tumor tissue samples from the SKCC.

In collaboration with the Department of Pathology and Genomic Medicine at Thomas Jefferson University,
we will utilize de-identified,
formalin-fixed paraffin embedded (FFPE) tumor tissue samples
from patients with known diagnoses of NSCLC, HCC and DBLCL.

The NSCLC cohort includes samples with known HIV infection,
while the HCC and DLBCL cohorts include samples with known HCV and/or HBV infection.

These samples will be analyzed with spatial transcriptomics with the assistance of a bioinformatician.
In samples with sufficient tissue,
we will also confirm the transcriptomic findings
with immunohistochemical detection and
measurement of the up-regulated redox enzymes,
utilizing the assistance of the
Department of Pathology and Genomic Medicine
to develop and optimize the protocols
needed for processing FFPE tissue samples
for protein retrieval and characterization.
