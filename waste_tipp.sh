#!/bin/bash
source ~/.bashrc
#SBATCH -J tipp
#SBATCH --qos=throughput \
#SBATCH --mem=24g \
#SBATCH --time=10:00:00 \
#SBATCH --cpus-per-task=24

cd /cbcb/project2-scratch/nolson/wastewater_tipp
BASE="/cbcb/project2-scratch/nolson/wastewater_tipp"
SCRATCH="/scratch0"
TEMP="tmp"

TIPP="/cbcb/project2-scratch/nolson/sepp_install/sepp/run_tipp.py"
REFPKG="/cbcb/project2-scratch/nolson/sepp_install/reference_db/rdp_bacteria.refpkg"
A=100
P=1000

dat=
nam="tipp_A${A}_P${P}_rdp_${dat}"

if [ ! -e ${ODAT}/${nam}_classification.txt ]; then
    python ${TIPP} -t ${REFPKG}/pasta.tree \
                       -a ${REFPKG}/pasta.fasta \
                   -r ${REFPKG}/pasta.taxonomy.RAxML_info \
                   -tx ${REFPKG}/all_taxon.taxonomy \
                   -txm ${REFPKG}/species.mapping \
                   -f mycobacteria_legionella_otus_rc.fasta \
                   -A ${A} -P ${P} \
                   --tempdir ${TEMP}
fi
