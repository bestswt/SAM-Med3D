python validation.py --seed 2023\
 -vp ./results/vis_sam_med2d_10 \
 -cp ./ckpt/sam-med2d_b.pth \
 -tdp /scratch/users/k23065445/data/data/test/ -nc 10 \
 --image_size 256 -mt vit_b --dim 2 --save_name ./results/sam_med2d_10.py --ft2d