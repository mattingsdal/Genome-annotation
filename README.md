# Genome-annotation

Annotation using MAKER using a two stage process. Manual editing og maker CTL files is required.
  1. Run CEGMA and extract HMM profiles to feed SNAP during MAKER
  2. Run GeneMark-ES and extract HMM to feed GeneMark during MAKER
  3. Run MAKER first time
  4. Extract MAKER predictions and make HMM modes to feed SNAP and Augustus
  5. Run MAKER a second time
  6. Extract gff and fasta files
