python inference.py --seed 2024\
 -cp /scratch/users/k23065445/SAM_CT/work_dir/from_turbo117/sam_model_dice_best.pth \
 -tdp /scratch/prj/inf_clinicalllm_msc/wentao_shi/data/data/demo/ -nc 1 \
 --output_dir ./results  \
 --task_name 117_1_Resample \

python inference.py --seed 2024\
 -cp /scratch/users/k23065445/SAM_CT/work_dir/from_turbo117/sam_model_dice_best.pth \
 -tdp /scratch/prj/inf_clinicalllm_msc/wentao_shi/data/data/demo/ -nc 10 \
 --output_dir ./results  \
 --task_name 117_10_Resample \









# --skip_existing_pred \
# --sliding_window \
# --save_image_and_gt \