#!/bin/bash


# A bash script to download relevant data from Pubmed


# retrieve an article ID
curl "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=%22long%20covid%22&retmax=10000" > data/pmids.xml


curl "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=${pmid}" > data/article-data-$pmid.xml

