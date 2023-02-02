#!/bin/bash
#SBATCH --job-name=mem_estimate
#SBATCH --output=mem_estimate.txt
#SBATCH --gres gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --mem 91600M

echo "Profiling CNN training on MNIST..."
source /home/mwolter1/.bashrc

module load CUDA
conda activate pytorch
python main.py --epochs 5 --profiler