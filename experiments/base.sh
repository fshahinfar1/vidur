#!/bin/bash
CURDIR=$(dirname $0)
cd $CURDIR/../
source venv/bin/activate

python -m vidur.main \
    --cluster_config_num_replicas 1 \
    --replica_config_model_name "meta-llama/Llama-2-7b-hf" \
    --replica_config_num_pipeline_stages 2 \
    --replica_config_device "a100" \
    --replica_config_network_device "a100_pairwise_nvlink" \

