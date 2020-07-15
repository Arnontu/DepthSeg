cd /content/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
# Set up the working environment.
CURRENT_DIR=$(pwd)
WORK_DIR="${CURRENT_DIR}/deeplab"
DATASET_DIR="datasets"
TRAIN_LOGDIR="/content/models/research/deeplab/datasets/PQR/exp/train_on_trainval_set/train"


python deeplab/vis.py \
    --logtostderr \
    --vis_split="val" \
    --model_variant="xception_65" \
    --atrous_rates=6 \
    --atrous_rates=12 \
    --atrous_rates=18 \
    --output_stride=16 \
    --decoder_output_stride=4 \
    --vis_crop_size=513,513 \
    --fine_tune_batch_norm=false \
    --dataset="pqr" \
    --colormap_type="pqr" \
    --checkpoint_dir='/content/models/research/deeplab/datasets/PQR/exp/train_on_trainval_set/train' \
    --vis_logdir='/content/vis' \
    --max_number_of_iterations=1 \
    --dataset_dir='/content/models/research/deeplab/datasets/PQR/tfrecord'