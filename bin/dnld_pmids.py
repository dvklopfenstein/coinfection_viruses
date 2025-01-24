#!/usr/bin/env python3
"""Given a user query, query PubMed and return PMIDs. Then run NIH's iCite on the PMIDs"""

__copyright__ = "Copyright (C) 2020-present, DV Klopfenstein. All rights reserved."
__author__ = "DV Klopfenstein"

import sys
from os import system
from os.path import relpath
from pmidcite.pubmedqueryicite import PubMedQueryToICite
from pmidcite.icite.dnldr.pmid_dnlder_base import NIHiCiteDownloaderBase


def main():
    """Download PMIDs returned for a PubMed query. Write an iCite report for each PMID"""
    # pylint: disable=bad-whitespace
    ##queries = adj_queries([
    queries = [
        # Output filenames               PubMed query
        # -----------------              -----------------------------------
        ('GenomicDataCommons.txt', 'Genomic Data Commons [TI]'),

    ] ## END

    # By default, only the last entry in the list is run.
    # This allows you to build a history of searches,
    # but not run all of them every time.
    #
    # To re-run all entries in the list:
    #   $ src/bin/dnld_pmids.py all
    #
    # To run the first query:
    #   $ src/bin/dnld_pmids.py 0
    #
    # To run the second to last query:
    #   $ src/bin/dnld_pmids.py -2
    #
    obj = PubMedQueryToICite(force_dnld=True)
    dnld_idx = obj.get_index(sys.argv, queries)
    nts_fout_query = obj.get_nts_g_list(queries)
    #dnldr = NIHiCiteDownloaderBase()
    pmid2paper = obj.get_pmid2paper(nts_fout_query, dnld_idx)
    if dnld_idx == [-1]:
        qry = nts_fout_query[-1]
        cmd = 'grep TOP {F} | sort -k6'.format(F=relpath(qry.fullname))
        system(cmd)
        print(f'QRY: {qry.pubmed_query}')
        print(f'CMD: {cmd}')


if __name__ == '__main__':
    main()

# Copyright (C) 2020-present DV Klopfenstein. All rights reserved.
