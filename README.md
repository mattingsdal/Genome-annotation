# Genome-annotation

Annotation using MAKER using a two stage process. Manual editing of maker CTL files is required.
  1. Run CEGMA and extract HMM profiles to feed SNAP during MAKER
  2. Run GeneMark-ES and extract HMM to feed GeneMark during MAKER
  3. Run MAKER first time using ab initio SNAP / GeneMark with protein database.
  4. Extract MAKER predictions and make HMM modes to feed SNAP and Augustus
  5. Run MAKER a second time using MAKER trained SNAP/ Augustus with protein database.
  6. Extract gff and fasta files
