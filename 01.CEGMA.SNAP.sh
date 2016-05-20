# Run CEGMA and extract HMM profiles to feed SNAP

module load cegma
module load maker

wd=/usit/abel/u1/mortema/genome
genome=mini.fasta

cd $wd
mkdir $genome.cegma

srun -A cees -n 4 --mem-per-cpu=1G --time=05:00:00 cegma -g $genome -T 4 --vrt -v -o $genome.cegma/$genome

cegma2zff output.cegma.gff   ../$genome
fathom genome.ann genome.dna -categorize 1000
fathom -export 1000 -plus uni.ann uni.dna
forge export.ann export.dn
hmm-assembler.pl $genome . > ../$genome.cegmasnap.hmm

# get / plot interesting CEGMA output
