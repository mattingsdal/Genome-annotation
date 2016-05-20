# run GeneMark-ES
# hmm file to MAKER is gmhmm.mod

wd=/usit/abel/u1/mortema/genome
genome=mini.fasta

cd $wd
mkdir $genome.genemark
cd $genome.genemark

~/software/maker/exe/gm_et_linux_64/gmes_petap/gmes_petap.pl --min_contig 20000 --cores 4 --ES --sequence ../$genome

module purge
