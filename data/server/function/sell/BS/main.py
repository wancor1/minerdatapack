import os
import shutil
import time
from tqdm import tqdm
import numpy as np

def create_folders(base_path, depth, count):
    total_folders = sum(count ** i for i in range(1, depth + 1))

    terminal_width = shutil.get_terminal_size().columns
    bar_length = int(terminal_width * 2 / 3)

    with tqdm(total=total_folders, desc="進捗", bar_format="{l_bar}{bar}| {n_fmt}/{total_fmt} フォルダ", ncols=bar_length) as pbar:
        
        def create_folder_level(current_path, current_depth, parent_number):
            if current_depth > depth:
                return
            for i in range(1, count + 1):
                new_folder_name = f"{parent_number}{i}"
                new_folder = os.path.join(current_path, new_folder_name)
                os.makedirs(new_folder, exist_ok=True)
                pbar.update(1)
                
                if total_folders < 10000:
                    if total_folders < 4000:
                        if total_folders < 750:
                            if total_folders < 250:
                                if total_folders < 50:
                                    time.sleep(0.075)
                                time.sleep(0.05)
                            time.sleep(0.025)
                        time.sleep(0.015)
                    time.sleep(0.001)

                create_folder_level(new_folder, current_depth + 1, new_folder_name)

        create_folder_level(base_path, 1, '')

    pbar.n = total_folders
    pbar.last_print_n = total_folders
    pbar.refresh()
    pbar.close()

def print_tree(base_path, prefix='', is_last=True, output_file=None, line_count=[0]):
    """指定されたフォルダのツリー構造を出力します（フォルダのみ）。"""
    items = os.listdir(base_path)
    items = [item for item in items if os.path.isdir(os.path.join(base_path, item))]
    items.sort()

    for i, item in enumerate(items):
        path = os.path.join(base_path, item)
        
        is_last = (i == len(items) - 1)
        connector = '└── ' if is_last else '├── '
        output_line = prefix + connector + item

        if line_count[0] < 100:
            print(output_line)
            line_count[0] += 1
        elif line_count[0] == 100:
            print("出力行数が100行を超えました。これ以上の出力は省略されます。")
            line_count[0] += 1

        if output_file:
            output_file.write(output_line + '\n')

        new_prefix = prefix + ('    ' if is_last else '│   ')
        print_tree(path, new_prefix, is_last, output_file, line_count)

script_dir = os.path.dirname(os.path.abspath(__file__))
count = 2

try:
    depth = int(input("フォルダの深さ（階層）を指定してください: "))
except ValueError:
    print("数値を入力してください。")
    exit()
 
create_folders(script_dir, depth, count)
print(f"\n指定されたフォルダ階層({depth})が \"{script_dir}\" に作成されました！")

show_tree = input("ツリー構造を表示しますか？ (y/n): ").strip().lower()
if show_tree == 'y':
    output_file_path = os.path.join(script_dir, 'tree.txt')
    with open(output_file_path, 'w', encoding='utf-8') as output_file:
        print_tree(script_dir, output_file=output_file)
        file_count = count ** depth
        print(f"\n{file_count}このファイルが作成されました", file=output_file)
    file_count = count ** depth
    print(f"\n{file_count}このファイルが作成されました")

    print(f"\nフォルダ構造が \"{output_file_path}\" に出力されました。")

os.system('PAUSE')