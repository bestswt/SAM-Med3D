import os
import nibabel as nib
from multiprocessing import Pool
from functools import partial

def process_file(threshold, file_path):
    try:
        mask = nib.load(file_path)
        mask_data = mask.get_fdata()
        mask_volume = (mask_data > 0).sum()
        if mask_volume < threshold:
            os.remove(file_path)
            return f"Deleted {file_path} due to small volume ({mask_volume})."
    except Exception as e:
        return f"Error processing {file_path}: {e}"

def delete_small_volume_masks(root_dir, threshold):
    """
    Delete mask files with volume smaller than the threshold.

    Parameters:
    - root_dir: The root directory to search for segmentation subfolders.
    - threshold: The volume threshold below which files are deleted.
    """
    file_paths = []
    for subdir, dirs, files in os.walk(root_dir):
        if 'segmentations' in subdir:
            for file in files:
                file_paths.append(os.path.join(subdir, file))

    with Pool() as p:
        results = p.map(partial(process_file, threshold), file_paths)

    for result in results:
        print(result)

# Example usage
root_directory = '/scratch/prj/inf_clinicalllm_msc/wentao_shi/data'
volume_threshold = 30  # Define your threshold here
delete_small_volume_masks(root_directory, volume_threshold)