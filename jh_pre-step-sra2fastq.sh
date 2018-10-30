## usage: nohup bash jh_pre-step-sra2fastq.sh sample.list &
dir="/data8t_4/JH/scRNA_seq/PRJNA153427/PRJNA153427"
while read id
do
echo $id
time fastq-dump --split-3  --gzip ${dir}/${id}
## The done MUST end with <$1 in order to read file sample.list into while loop
done <$1
