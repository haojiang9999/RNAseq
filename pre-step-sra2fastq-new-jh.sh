# Using fasterq-dump !!!
# here was I try to extract 10X SRA files parameter
#ls *sra |while read id; do ~/biosoft/sratoolkit/sratoolkit.2.6.3-centos_linux64/bin/fasterq-dump --split-3 $id;done
nohup ~/biosoft/sratoolkit/sratoolkit.2.6.3-centos_linux64/bin/fasterq-dump -p --split-files  	N61311_untreated	SRR1039508.sra &
