# run GeneMark

wd=
genome=
module load genemark-es

gmes_petap.pl --min_contig 20000 --cores 4 --ES --sequence $genome
