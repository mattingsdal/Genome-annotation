# maker creates an output folder with a datastore index. use gff3_merge to combine all the GFFs

module load maker
base=test_genome
genome=test_genome.fasta

mkdir $base.2nd
cd $base.2nd


# convert this GFF to a snap model:
############### SNAP ############### (add -c and -e to not apply est filtering)
gff3_merge -d ../$base.maker.output/$base\_master_datastore_index.log
maker2zff -c 0 -e 0 -x 0.5 $base.all.gff
fathom -categorize 1000 genome.ann genome.dna
fathom -export 1000 -plus uni.ann uni.dna
forge export.ann export.dna
hmm-assembler.pl $base . > $base.snap.2nd.hmm

############### Augustus ############### 

species=corkwing
cd $base.hmm
zff2gff3.pl genome.ann | perl -plne 's/\t(\S+)$/\t\.\t$1/' >genome.gff3
# the perl one liner is needed to add an extra GFF column which is missing in the output of zff2gff3.pl

export AUGUSTUS_CONFIG_PATH=/usit/abel/u1/mortema/software/maker/exe/augustus-3.2.2/config
# run augustus using autoAug:
# specify --cdna if EST fasta file
~/software/maker/exe/augustus-3.2.2/scripts/autoAug.pl --genome=../$genome --species=$species --trainingset=genome.gff3 --singleCPU -v --useexisting

