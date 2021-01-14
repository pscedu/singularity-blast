#!/bin/bash

TOOLS=(blast_formatter
blastdb_path
blastn
deltablast
rpsblast
update_blastdb.pl
blast_report
blastdbcheck
blastp
legacy_blast.pl
rpstblastn
blastdb_aliastool
blastdbcmd
blastx
makeblastdb
tblastn
blastdb_convert
blastdbcp
convert2blastmask
psiblast
tblastx)

cat << EOF > template
#!/bin/bash

if [ ! \$(command -v singularity) ]; then
	module load singularity
fi

VERSION=2.9.0
PACKAGE=BLAST
TOOL=TOOL_NAME
DIRECTORY=/opt/packages/\$PACKAGE/\$VERSION

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
done

rm -f template
