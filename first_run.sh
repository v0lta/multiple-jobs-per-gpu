#!/bin/bash
#SBATCH --job-name=single_exp
#SBATCH --output=single_exp.txt
#SBATCH --gres gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --mem 91600M
#SBATCH --time 01:00:00

echo "Training a CNN on MNIST..."
source /home/mwolter1/.bashrc

module load CUDA
conda activate pytorch
python main.py --profiler
