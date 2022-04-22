t5chem predict \
  --data_dir data/smiles_with_hv \
  --model_dir model/smiles_with_hv_480k/best_cp-1000 \
  --batch_size 32 \
  --prefix "Product:" \
  --num_beams 10 \
  --num_preds  3
