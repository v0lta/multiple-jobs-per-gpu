#!/bin/bash
#SBATCH --job-name=multi_exp
#SBATCH --output=multi_exp.txt
#SBATCH --gres gpu
#SBATCH -n 1

module CUDA
conda activate pytorch
python fork.py
