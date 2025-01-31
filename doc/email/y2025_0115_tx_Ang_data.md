# Dr. Ang sent data
```
# Date from HIV+ Tumor Molecular Characterization Project - DLBCL (Diffuse Large B-Cell Lymphoma)
#   * All male
#   * All positive for DLBCL
$ find data -type f
data/DLBCL/HIV_HBV_HCV_KSHV_Pos/bfaa4a92-9a60-43be-8216-654e3f6951cb.rna_seq.augmented_star_gene_counts.tsv
data/DLBCL/HIV_Neg/b2ab5698-d772-48f7-a28b-5fd3613a6559.rna_seq.augmented_star_gene_counts.tsv
data/DLBCL/HIV_Pos/d7f1ab14-d5fa-4bb9-b354-d4f5cdf803ee.rna_seq.augmented_star_gene_counts.tsv
```

# Wednesday, January 15, 2025 from Ang,Charles
```
From: Ang,Charles <cga26@drexel.edu>
Sent: Wednesday, January 15, 2025 1:01 PM
To: Klopfenstein,Debra <dk497@drexel.edu>
Cc: Chaiken,Irwin <imc23@drexel.edu>
Subject: Sample files
 
Hi Debra,

It was great to talk to you yesterday and get a better understanding of how the three tools stacked up against each other in terms of community use and proliferation.  As discussed, I had been going through some of the GDC data, and there are a few projects that are specifically on HIV and cancer tissues, sometimes including accessible transcriptomic data.

Attached are three files from the HIV+ Tumor Molecular Characterization Project - DLBCL (Diffuse Large B-Cell Lymphoma) in marked folders.  If I'm understanding these correctly, included should be one file each for an HIV negative patient, HIV positive patient, and a quad-positive patient (HIV, HBV, HCV, KSHV), if we wanted to see how each tool detected viral co-infections.  All are male and should be positive for DLBCL.

Please let me know if I can provide any other files or information at this point.  There's apparently another chunk of the data that's under controlled access, and I think that's why I don't have all of the files on the patient list.  I'll see about requesting access if this works out.

Thanks,
Charles

```

# Thursday, January 16, 2025 from Ang,Charles
```
From: Ang,Charles <cga26@drexel.edu>
Sent: Thursday, January 16, 2025 11:34 AM
To: Klopfenstein,Debra <dk497@drexel.edu>
Cc: Chaiken,Irwin <imc23@drexel.edu>
Subject: Re: Sample files
 
The data was sourced from the GDC cohort builder, filtering by project (General > Project > CGCI-HTMCP-DLBCL) and data availability (Available Data > Experimental Strategy > RNA-seq, and Available Data > Access > Open).

With respect to sequences, I'm not sure what you mean?  The TSV files list by gene code (e.g. TXN, P4HB, PDIA3) not full sequences.  If you mean human and viral genomic sequences, I think building those indices are specific to each of the tools, or it was for VIRTUS at least, using files on its github.

Thanks,
Charles
```
