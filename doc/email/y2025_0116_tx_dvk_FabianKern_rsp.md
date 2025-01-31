# DVK Questions about 2021 Nature paper

# Thursday, January 16, 2025 from DVK
```
Sent: Thursday, January 16, 2025 1:31 PM
To: Ang,Charles <cga26@drexel.edu>
Cc: Chaiken,Irwin <imc23@drexel.edu>
Subject: Fw: Question on: 2021 Dysregulation of brain and choroid plexus cell types in severe COVID-19
 
Hello All!

Great news: Fabian Kern, the researcher who used
VIRTUS, Viral-Track, and centrifuge to do the analysis 
for their highly-cited 2021 Nature paper,
Dysregulation of brain and choroid plexus cell types in severe COVID-19,
just wrote back describing his experience using 
all three tools on all their sequences
to compare the results of each tool:
  * VIRTUS and Viral-Track had similar results
  * Centrifuge was too sensitive (numerous false positive hits) 
    for their use model; but it is good for metagenomics
  * Viral-Track was easier to use than VIRTUS

Check out his full description below.

Regards,

Debra, PhD
```

# Thursday, January 16, 2025 10:37 AM from Fabian Kern
```
From: Fabian Kern <fabian.kern@ccb.uni-saarland.de>
Sent: Thursday, January 16, 2025 10:37 AM
To: Klopfenstein,Debra <dk497@drexel.edu>
Cc: Andreas Keller <andreas.keller@ccb.uni-saarland.de>; twc@stanford.edu <twc@stanford.edu>
Subject: Re: Question on: 2021 Dysregulation of brain and choroid plexus cell types in severe COVID-19
 
Dear Debra,

Thanks for reaching out with your questions - happy to provide some background after reviewing our project notes from back then:

I was wondering how the researchers using those tools liked each tool. Why did they choose Viral-Track for some sequences? Why did they choose centrifuge for other sequences?

Maybe there’s a misunderstanding involved here; we actually did use each of the mentioned tools for *all* sequences (bulk / single-cell, covid, non-covid). Since back at the time there was no proper benchmark available for viral RNA mapping tools (including SARS-COV-2), we decided to use several, trying to replicate and cross-check our findings. In particular, the precise (but obviously slower) methods using full alignments against human and viral genomes (Viral-Track and VIRTUS actually both use STAR) led us to compare them against a fast tool from the metagenomics domain (centrifuge). However, it turned out that centrifuge was too sensitive (which is needed for metagenomics) for our use-case, erroneously reporting numerous false-positive hits. As final confirmation, we naively reimplemented the STAR mapping approach (like in Viral-Track and VIRTUS) ourselves, to perform another sanity check for that indeed no viral reads could be found in our data. Back at the time this was a critical question to address.

The differences in sequences you mentioned exists *only* in the mapping indices used for each tool (the human and viral genome indices), which slightly differed between the tools as it was technically impossible, due to slight implementation differences, to use a single index for all of them.

What did they use VIRTUS for?
See above. There was really no difference in input usage.

Which tool did they like the best?
From a simple user perspective, Viral-Track was easier to use than VIRTUS. This ofc might have changed in the meantime. Centrifuge was also easy to use.

What were the trade-offs they considered when using each tool.
Despite the fundamental differences in implementation between the STAR-based tools and centrifuge, the main trade-off for us was usage difficulty, being able to quickly adjust mapping parameters and the output formatting. 

But please consider that each also comes with a unique set of downstream functionality, which may in the end be more important to chose one for our own setup. For us this didn’t matter back at the time because we were simply interested in the number of mapping reads, which was void anyhow.

Hope this supports answering your questions. Finally, if you plan to run your own viral read mapping analysis with your own data, I recommend to look out for a benchmark and / or have a look at which downstream analysis functionality you require before going with one of the tools.

All the best,
Fabian

— 
Dr. Fabian Kern
Clinical Bioinformatics
Saarland University
Building E2.1, R207
66123 Saarbrücken, Germany
+49 (681) 302 68610

Am 14.01.2025 um 05:23 schrieb Andreas Keller <andreas.keller@ccb.uni-saarland.de>:

Thanks for reaching out Debra 

I am cc‘ing Fabian Kern. He did the analysis the time back and might remember the exact reason for using those tools. 

Relatedly, we finished a rather comprehensive study where we searched for over a year for viral reads across millions of nuc seq cells. Whatever we get on hits and patterns is close to the background and noise - this made us finally stopping respective efforts. 

Sincerely yours 

Andreas 

----------------------
Professor Dr. Andreas Keller

Helmholtz-Institute for Pharmaceutical Research Saarland (HIPS)
Department Head 
Department of Clinical Bioinformatics (CLIB)
 

Chair for Clinical Bioinformatics
Saarland Informatics Campus
Saarland University
Building E2.1
66123 Saarbrücken, Germany
+49 (174) 1684638

Am 1/13/25 um 23:56 schrieb Klopfenstein,Debra <dk497@drexel.edu>:

Dear Drs. Keller and Wyss-Coray,

Thank you for your 2021 Nature paper titled, Dysregulation of brain and choroid plexus cell types in severe COVID-19. I am a post-doc at Drexel University working with Dr. Will Dampier under Brian Wigdahl in the Drexel School of Medicine.

I noticed that you used Viral-Track, VIRTUS, or centrifuge to search for SARS-CoV-2 reads in either the snRNA-seq or bulk RNA-seq datasets. The paper then goes on to say a bit more detail about the use of Viral-Track and centrifuge, but not VIRTUS. I was wondering how the researchers using those tools liked each tool. Why did they choose Viral-Track for some sequences? Why did they choose centrifuge for other sequences? What did they use VIRTUS for? Which tool did they like the best? What were the trade-offs they considered when using each tool.

Thank you very much for the Nature paper and for considering my questions. Thank you for your time.

Regards,

Debra, PhD
```
