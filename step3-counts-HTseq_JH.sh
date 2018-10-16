## usage: bash HTseq_counts.sh 
ls *.bam | while read id ; 
do 
nohup htseq-count  -f bam  $id   /home/huangrt/JH/Genome/gencode.v27.annotation.gtf  1>${id%%.*}.gene.counts 2>${id%%.*}.HTseq.genes.counts.log &
#nohup ~/.local/bin/htseq-count  -f bam   -i exon_id  $id   ~/annotation/gencode/v24_GRCH37/gencode.v24lift37.annotation.gtf   1>${id%%.*}.exon.counts  2>${id%%.*}.HTseq.exon.counts.log &
done 
