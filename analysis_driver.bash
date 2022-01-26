# complete analysis pipeline - https://rpubs.com/maddieSC/mothur_SOP_May_2018
#refered from https://www.riffomonas.org/reproducible_research/automation/#30
wget https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.nr_v138.tgz
tar xvzf silva.nr_v138.tgz silva.nr_v138.align silva.nr_v138.tax
rm silva.nr_v138.tgz

# (Dont use it; download directly) wget https://mothur.org/w/images/6/68/gg_13_8_99.taxonomy.tgz/ 
tar xvzf gg_13_8_99.taxonomy.tgz gg_13_8_99.fasta gg_13_8_99.gg.tax
rm gg_13_8_99.taxonomy.tgz

# Run mothur through the various quality control steps
# mothur get_good_seqs.batch 
# Screening sequences according what you observe in summary sequences
# mothur screen_seqs.batch
# Run mock community data through mothur to get the shared file
mothur get_shared_otus.batch


