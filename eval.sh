t5chem predict \
  --data_dir data/ringbreaker/ \
  --model_dir model/ringbreaker_USPTO_50k/checkpoint-10000/ \
  --batch_size 32 \
  --prefix "Reactants:" \
  --num_beams 10 \
  --num_preds  3
