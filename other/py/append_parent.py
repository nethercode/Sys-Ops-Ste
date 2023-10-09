import os

def append_parent_directory():
    # Get the current working directory
    current_directory = os.getcwd()

    # List all folders in the current directory
    folders = [folder for folder in os.listdir(current_directory) if os.path.isdir(folder)]

    # Iterate through each folder and append the parent directory
    for folder in folders:
        new_name = f"{folder}_{os.path.basename(current_directory)}"
        os.rename(folder, new_name)
        print(f"Renamed {folder} to {new_name}")

if __name__ == "__main__":
    append_parent_directory()
