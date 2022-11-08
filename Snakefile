SRAID = SRR626582


rule download_fastq:
    output:
        "samples/{SRAID}.fastq"
    singularity:
        "docker://evolbioinfo/sratoolkit:v2.5.7"
    shell:
        "fasterq-dump {wildcards.sample}"

docker run evolbioinfo/sratoolkit:vlatest fasterq-dump  --progress -O ~/Documents/Cours M2 AMI2B/ProjetHackathon/output SRR628582