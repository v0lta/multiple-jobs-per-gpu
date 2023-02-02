#!/bin/bash
#SBATCH --job-name=multi_exp
#SBATCH --output=multi_exp.txt
#SBATCH --gres gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --mem 91600M

echo "Multiple CNN training on MNIST..."
source /home/mwolter1/.bashrc

module CUDA
conda activate pytorch
python fork.py
