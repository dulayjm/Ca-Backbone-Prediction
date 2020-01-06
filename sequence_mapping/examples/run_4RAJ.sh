#!/bin/bash
#--------------------------------------------------------------------------------
#  SBATCH CONFIG
#--------------------------------------------------------------------------------
#SBATCH -J  4RAJ
#SBATCH -o 4RAJ-%j.out
#SBATCH --partition Lewis,hpc5,hpc4
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem-per-cpu=2G
#SBATCH --time 2-00:00
#--------------------------------------------------------------------------------

outputdir=/home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/test/4RAJ_out

mkdir -p /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/test/4RAJ_out

cd /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/test/4RAJ_out

printf "perl /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/scripts/CaTrace2Seq.pl /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/examples/4RAJ/4RAJ_fragment.pdb /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/examples/4RAJ/4RAJ.fasta /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/test/4RAJ_out 50 10\n\n"

perl /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/scripts/CaTrace2Seq.pl /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/examples/4RAJ/4RAJ_fragment.pdb /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/examples/4RAJ/4RAJ.fasta /home/jh7x3/Ca-Backbone-Prediction/sequence_mapping/test/4RAJ_out 50 10
