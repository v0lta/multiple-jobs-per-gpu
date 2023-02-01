#!/bin/bash
#SBATCH --job-name=single_exp
#SBATCH --output=single_exp.txt
#SBATCH --gres gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --mem 91600M

module load CUDA
conda activate pytorch
python main.py
