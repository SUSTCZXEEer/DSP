import os

folder_path = 'D:\SUSTech.Study\EE\大三上\Digital Signal Processing\Lab\Mini Proj\MATLAB Code\钢琴88键'
file_extension = '.m4a'  # 替换为你的文件扩展名

# 获取文件夹下的文件列表
file_list = os.listdir(folder_path)

# 对文件列表进行排序
file_list.sort()

# 遍历文件列表并重命名文件
for i, file_name in enumerate(file_list):
    if file_name.endswith(file_extension):
        new_file_name = str(i+1) + file_extension
        file_path = os.path.join(folder_path, file_name)
        new_file_path = os.path.join(folder_path, new_file_name)
        os.rename(file_path, new_file_path)
        print(f'Renamed "{file_name}" to "{new_file_name}"')