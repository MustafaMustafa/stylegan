#!/bin/bash
#SBATCH --time=02:00:00
#SBATCH --gres=gpu:8
#SBATCH -C gpu


module load cuda
module load nccl
module load tensorflow/gpu-1.13.0-py36

cd /project/projectdirs/dasrepo/mustafa/stylegan 
python train.py
