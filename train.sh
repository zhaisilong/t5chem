#!/usr/bin/env bash

# batch_size 48 -> 9000 推荐 32 不然容易崩溃
# batch_size 256 -> 12000

DATA_DIR="data/ringbreaker/"
OUTPUT_DIR="model/ringbreaker/"
TASK_TYPE='reactants'
NUM_EPOCH=10000
LOG_STEP=1000
BATCH_SIZE=48
INIT_LR=0.001
# PRETRAIN="model/USPTO_50k/best_cp-35000/"
#LOG_STEP=1000
#PRETRAIN="model/480k/best_cp-600000/"
#FROM_CKPT='model/480k/checkpoint-160000/'
#VOCAB="models/pretrain/simple/vocab.pt"

t5chem train --data_dir ${DATA_DIR} \
  --output_dir ${OUTPUT_DIR} \
  --task_type ${TASK_TYPE} \
  --num_epoch ${NUM_EPOCH} \
  --log_step ${LOG_STEP} \
  --batch_size ${BATCH_SIZE} \
  --init_lr ${INIT_LR}
  # --pretrain ${PRETRAIN}
#  --log_step ${LOG_STEP} \
#  --vocab ${VOCAB} \
#  --pretrain ${PRETRAIN} \
#  --from_ckpt ${FROM_CKPT}

