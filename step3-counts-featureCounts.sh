## usage: bash HTseq_counts.sh 
ls *.bam | while read id ; 
do
## Summarize paired-end reads and count fragments (instead of reads):
nohup featureCounts -T 8 -p -t exon -g gene_id -a /home/huangrt/JH/Genome/gencode.v19.annotation.gtf -o ${id%%.*}.gene.counts.txt $id &
#nohup ~/.local/bin/htseq-count  -f bam   -i exon_id  $id   ~/annotation/gencode/v24_GRCH37/gencode.v24lift37.annotation.gtf   1>${id%%.*}.exon.counts  2>${id%%.*}.HTseq.exon.counts.log &
done 