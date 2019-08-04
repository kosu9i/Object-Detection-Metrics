#!/bin/bash
DIRS=(
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-1011
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-2021
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-3031
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-4041
../EAST/predict_valid_20190803_for_metrics/model.ckpt-5051
../EAST/predict_valid_20190803_for_metrics/model.ckpt-6061
../EAST/predict_valid_20190803_for_metrics/model.ckpt-7071
../EAST/predict_valid_20190803_for_metrics/model.ckpt-8081
../EAST/predict_valid_20190803_for_metrics/model.ckpt-9091
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-10101
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-11111
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-12121
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-13131
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-14141
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-15151
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-16161
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-17171
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-18181
#../EAST/predict_valid_20190803_for_metrics/model.ckpt-19191
)

for dir in ${DIRS[@]}
do
    date
    echo $dir
    base=`basename $dir`
    mkdir -p ./my_results/$base
    python3 pascalvoc.py \
        -gt ../EAST/ref_valid_for_metrics/ \
        -det $dir \
        -sp ./my_results/$base
done

