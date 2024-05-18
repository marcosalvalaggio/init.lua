import os
import shutil

def delete_contents(folder_path: str) -> None:
    if os.path.exists(folder_path):
        for root, dirs, files in os.walk(folder_path, topdown=False):
            for file_name in files:
                file_path = os.path.join(root, file_name)
                try:
                    os.remove(file_path)
                    print(f'deleted: {file_path}')
                except Exception as e:
                    print(f'error: {e}')
            for dir_name in dirs:
                dir_path = os.path.join(root, dir_name)
                try:
                    shutil.rmtree(dir_path)
                    print(f'deleted folder: {dir_path}')
                except Exception as e:
                    print(f'error: {e}')
        try:
            shutil.rmtree(folder_path)
        except Exception as e:
            print(f'error: {e}')
    else:
        print(f'Directory {folder_path} does not exist.')


def delete_file(file_path: str) -> None:
    try:
        os.remove(file_path)
        print(f'deleted: {file_path}')
    except Exception as e:
        print(f'error: {e}')


def update_contents(source_path: str) -> None:
    try:
        destination_path = os.getcwd()
        for root, _, files in os.walk(source_path):
            relative_path = os.path.relpath(root, source_path)
            destination_root = os.path.join(destination_path, relative_path)
            os.makedirs(destination_root, exist_ok=True)
            for file_name in files:
                source_file = os.path.join(root, file_name)
                destination_file = os.path.join(destination_root, file_name)
                if not os.path.exists(destination_file):
                    shutil.copy2(source_file, destination_root)
                    print(f'copied: {source_file} to {destination_file}')
        print('update executed')
    except Exception as e:
        print(f'error: {e}')

if __name__ == "__main__":
    delete_file('.luarc.json')
    delete_file('init.lua')
    delete_file('lazy-lock.json')
    # delete_file('lua/plugins.lua')
    # delete_file('lua/vim-options.lua')
    # delete_contents('lua/plugins')
    delete_contents('lua')
    update_contents(r'C:\\Users\\marsa\\AppData\\Local\\nvim')

    

