python inference.py --seed 2024\
 -cp ./ckpt/sam_med3d_turbo.pth \
 -tdp /scratch/prj/inf_clinicalllm_msc/wentao_shi/data/word/test -nc 1 \
 --output_dir ./results  \
 --task_name infer_turbo \
 --save_image_and_gt \
 --sliding_window \
 --skip_existing_pred
