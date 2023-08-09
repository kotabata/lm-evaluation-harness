#!/bin/bash

#$ -l rt_AG.small=1
#$ -l h_rt=24:00:00
#$ -j y
#$ -cwd

date

source /etc/profile.d/modules.sh
module load python/3.10/3.10.10
cd ~/lm-evaluation-harness
source work/bin/activate
which python

nvidia-smi

MODEL_ARGS="pretrained=rinna/japanese-gpt-neox-3.6b-instruction-ppo,use_fast=False,device_map=auto,torch_dtype=auto"
# TASK="jcommonsenseqa-1.1-0.3,jnli-1.1-0.3,jsquad-1.1-0.3"
TASK="marc_ja-1.1-0.3"
python main.py --model hf-causal --model_args $MODEL_ARGS --tasks $TASK --num_fewshot "3" --device "cuda" --output_path "results/rinna_ppo.json"

date
