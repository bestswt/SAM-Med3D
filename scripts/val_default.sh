python validation.py --seed 2023\
 -vp ./results/vis_sam_med3d \
 -cp ./ckpt/sam_med3d_turbo.pth \
 -tdp /scratch/prj/inf_clinicalllm_msc/wentao_shi/data/word/test -nc 1 \
 --save_name ./results/sam_med3d.py \
 --skip_existing_pred
