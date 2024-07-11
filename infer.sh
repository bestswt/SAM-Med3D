python inference.py --seed 2024\
 -cp /scratch/users/k23065445/SAM_CT/work_dir/from_turbo117/sam_model_dice_best.pth \
 -tdp /scratch/prj/inf_clinicalllm_msc/wentao_shi/data/data/test/ -nc 1 \
 --output_dir ./results  \
 --task_name infer_ours_117_1 \
# --save_image_and_gt \
 --sliding_window \
 --skip_existing_pred
