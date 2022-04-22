# t5chem

## Dataset

- [sample dataset for multiple task]

### USPTO

- USPTO_TPL
  - author: build@Lowe,introduced@Schwaller
  - data: 445,000@rxns -> 1000@class
  - split: 9 | 1
  - type: classification

- USPTO_MIT
  - author: Jin, base@Lowe
  - data: 479,000 reactions: 409,000 | 30,000 | 40,000
  - version: mixed,separated
  - type: product
  
- USPTO_50k
  - src: filtered from Lowe
  - data: 40,000 | 5000 | 5000
  - type: reactants(Retrosynthesis)

- C–N Coupling:
  - author: Ahneman
  - data: 4608
  - version:
    - Ten random split cross validation sets
    - Four out-of-sample test sets
  - type: regression@yield

- USPTO_500_MT
  - author: Jieyu Lu
  - type: Multi-task


Forward reaction prediction: source: `reactants.reagents>>` target: `product` (see data/USPTO_500_MT/Product/)
Retrosynthesis: source: `product` target: `reactants` (see data/USPTO_500_MT/Reactants/)
Reagent prediction: source: `reactants>>product` target: `reagents` (see data/USPTO_500_MT/Reagents/)
Classification: source: `reactants.reagents>>product` target: `labels` (see data/USPTO_500_MT/Classification/)
Yield prediction: source: `reactants.reagents>>product` target: `Yield` (see data/USPTO_500_MT/Yield)


## models

- based on huggingface

## 知识点

- 分数据以及数据写入
  - scikit_learn

- rdkit
  - 分子量计算

- 数据预处理
  - Scaler
    - 编码与解码

- 数据分析
  - sklearn.metrics
    - MAE: mean_absolute_error
    - MSE: mean_squared_error

- python
  - subparsers

## 实验记录

480k 作为预训练跑不起来

## 

```bash
conda create -nt5chem python=3.7
conda activate t5chem
pip install -r requirements.txt -i"https://pypi.tuna.tsinghua.edu.cn/simple/"
```