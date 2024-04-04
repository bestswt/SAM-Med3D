python validation.py --seed 2023\
 -vp ./results/vis_ft-sam_b_5 \
 -cp ./ckpt/ft-sam_b.pth \
 -tdp /scratch/users/k23065445/data/data/test/ -nc 5 \
 --image_size 1024 -mt vit_b --dim 2 --save_name ./results/ft-sam_b_5.py