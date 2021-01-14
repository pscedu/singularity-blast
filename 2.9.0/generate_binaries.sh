#!/bin/bash

TOOLS=(aalookup_unit_test           msa2pssm_unit_test
	aascan_unit_test             ntlookup_unit_test
	align_format_unit_test       ntscan_unit_test
	bdbloader_unit_test          optionshandle_unit_test
	bl2seq_unit_test             phiblast_unit_test
	blastdb_aliastool            prelimsearch_unit_test
	blastdbcheck                 project_tree_builder
	blastdbcmd                   psibl2seq_unit_test
	blastdbcp                    psiblast
	blastdb_format_unit_test     psiblast_iteration_unit_test
	blastdiag_unit_test          psiblast_unit_test
	blastengine_unit_test        pssmcreate_unit_test
	blastextend_unit_test        pssmenginefreqratios_unit_test
	blastfilter_unit_test        querydata_unit_test
	blast_formatter              queryinfo_unit_test
	blast_format_unit_test       redoalignment_unit_test
	blasthits_unit_test          remote_blast_unit_test
	blastinput_unit_test         rpsblast
	blastn                       rpstblastn
	blastoptions_unit_test       rps_unit_test
	blastp                       scoreblk_unit_test
	blast_services_unit_test     search_strategy_unit_test
	blastsetup_unit_test         seedtop
	blast_unit_test              segmasker
	blastx                       seqdb_demo
	convert2blastmask            seqdb_perf
	datatool                     seqdb_unit_test
	deltablast                   seqinfosrc_unit_test
	delta_unit_test              seqsrc_unit_test
	dustmasker                   setupfactory_unit_test
	gapinfo_unit_test            split_query_unit_test
	gencode_singleton_unit_test  subj_ranges_unit_test
	gene_info_reader             tblastn
	gene_info_unit_test          tblastx
	hspfilter_besthit_unit_test  tracebacksearch_unit_test
	hspfilter_culling_unit_test  traceback_unit_test
	hspstream_unit_test          uniform_search_unit_test
	legacy_blast.pl              update_blastdb.pl
	linkhsp_unit_test            version_reference_unit_test
	makeblastdb                  windowmasker
	makembindex                  windowmasker_2.2.22_adapter.py
	makeprofiledb                writedb_unit_test)

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

mkdir temp
for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        cp $TOOL temp/
        git add $TOOL
done

rm -f template
