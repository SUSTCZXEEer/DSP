import os

def remove_m4a_files(folder_path):
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith(".m4a"):
                file_path = os.path.join(root, file)
                os.remove(file_path)
                print(f"Deleted file: {file_path}")

# 指定目标文件夹的路径
folder_path = r"D:\SUSTech.Study\EE\大三上\Digital Signal Processing\Lab\Mini Proj\MATLAB Code"

# 删除.m4a文件
remove_m4a_files(folder_path)
