cd /content/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
CURRENT_DIR=$(pwd)
WORK_DIR="${CURRENT_DIR}/deeplab"
DATASET_DIR="datasets"

python deeplab/eval.py \
    --logtostderr \
    --eval_split="val" \
    --model_variant="xception_65" \
    --atrous_rates=6 \
    --atrous_rates=12 \
    --atrous_rates=18 \
    --output_stride=16 \
    --decoder_output_stride=4 \
    --fine_tune_batch_norm=false \
    --eval_crop_size=513,513 \
    --dataset="pqr" \
    --max_number_of_evaluations=1 \
    --checkpoint_dir='/content/models/research/deeplab/datasets/PQR/exp/train_on_trainval_set/train' \
    --eval_logdir='/content/eval' \
    --dataset_dir='/content/models/research/deeplab/datasets/PQR/tfrecord'


    