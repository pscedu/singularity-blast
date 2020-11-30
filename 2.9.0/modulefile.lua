--
-- BLAST+ 2.9.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: BLAST (basic local alignment search tool) is an algorithm and program for comparing primary biological sequence information, such as the amino-acid sequences of proteins or the nucleotides of DNA and/or RNA sequences."
-- "Keywords: singularity bioinformatics"

whatis("Name: BLAST+")
whatis("Version: 2.9.0")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: BLAST (basic local alignment search tool) is an algorithm and program for comparing primary biological sequence information, such as the amino-acid sequences of proteins or the nucleotides of DNA and/or RNA sequences.")

help([[
BLAST+ 2.9.0
------------

Description
-----------
BLAST (basic local alignment search tool) is an algorithm and program for comparing primary biological sequence information, such as the amino-acid sequences of proteins or the nucleotides of DNA and/or RNA sequences.

To load the module type

> module load blast/2.9.0

To unload the module type

> module unload blast/2.9.0

Documentation
-------------
https://www.ncbi.nlm.nih.gov/books/NBK279690/

For help, type

> blastn -help
> blastp -help

Repository
----------
ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+

Tools included in this module are

* blastn
* blastp
]])

local package = "blast"
local version = "2.9.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
