import pandas as pd
import matplotlib.pyplot as plt
import subprocess

# Original List
# NTT_TYPE_LST = ["TYPE_MTX", "TYPE_N2_1", "TYPE_N2_2", "TYPE_N2_3", "TYPE_FAST_FIXED", "TYPE_FAST_MIXED", "TYPE_FAST_FIXED_INPLACE", "TYPE_FAST_MIXED_INPLACE"] 
# Expanded List
# NTT_TYPE_LST = ["TYPE_MTX", "TYPE_N2_1", "TYPE_N2_2", "TYPE_N2_3", "TYPE_FAST_FIXED", "TYPE_FAST_MIXED", "TYPE_FAST_FIXED_INPLACE", "TYPE_FAST_MIXED_INPLACE", "TYPE_FAST_FIXED_INPLACE_LUT", "TYPE_FAST_MIXED_INPLACE_LUT", "TYPE_N2_4_LUT"] 
# Only new items
NTT_TYPE_LST = ["TYPE_FAST_FIXED_INPLACE_LUT", "TYPE_FAST_MIXED_INPLACE_LUT", "TYPE_N2_4_LUT"] 

def run_bash_cmd(bash_command): 
    try: 
        # Run the command and capture the output and error 
        output = subprocess.check_output(bash_command, shell=True, universal_newlines=True, stderr=subprocess.STDOUT) 
         
        # Print the output 
        # print(output) 
        return output 
    except subprocess.CalledProcessError as e: 
        # If the command returns a non-zero exit code, it will raise a CalledProcessError 
        print(f"Command failed with exit code {e.returncode}:") 
        print(e.output) 

# Function to plot the given array together on same set of figs
def plot_set(dir_name, legend):
    # Define the columns to plot against "Dim"
    columns_to_plot = ["Runtime", "Heap", "IR Cnt", "Code Size B", "Func Size B"]
    for column in columns_to_plot:
        folder_path = dir_name + "_FIGS/"
        bash_cmd = "[ ! -d " + folder_path + " ] && mkdir " + folder_path + " || echo"
        run_bash_cmd(bash_cmd)

        plt.figure(figsize=(8, 6))  # Set the figure size
        plt.xlabel("Dim")
        plt.ylabel(column)
        plt.title(f" {column} vs. Dim")
        plt.grid(True)
        for ntt_type in legend:
            df = pd.read_csv(ntt_type + "_data_sweep.csv")
            plt.plot(df["Dim"], df[column], marker='o', linestyle='-', label=ntt_type)
        plt.legend()
        plt.savefig(folder_path + dir_name + "_" + column.replace(" ","") + ".png", dpi=300, bbox_inches='tight')
        plt.close()

# Define the columns to plot against "Dim"
columns_to_plot = ["Runtime", "Heap", "IR Cnt", "Code Size B", "Func Size B"]

for ntt_type in NTT_TYPE_LST:
    # Load the CSV file into a pandas DataFrame
    df = pd.read_csv(ntt_type + "_data_sweep.csv")

    folder_path = ntt_type + "_FIGS/"
    bash_cmd = "[ ! -d " + folder_path + " ] && mkdir " + folder_path + " || echo"
    run_bash_cmd(bash_cmd)

    # Create a line graph for each column
    for column in columns_to_plot:
        plt.figure(figsize=(8, 6))  # Set the figure size
        plt.plot(df["Dim"], df[column], marker='o', linestyle='-', label=column)
        plt.xlabel("Dim")
        plt.ylabel(column)
        plt.title(ntt_type + f" {column} vs. Dim")
        plt.grid(True)
        plt.legend()
        plt.savefig(folder_path + ntt_type + "_" + column.replace(" ","") + ".png", dpi=300, bbox_inches='tight')
        plt.close()


plot_set("ALL", NTT_TYPE_LST)
plot_set("QUADRATIC", NTT_TYPE_LST[0:4])
plot_set("LINEARITHMIC", NTT_TYPE_LST[4:8])
plot_set("N2", NTT_TYPE_LST[1:4])
plot_set("N2_2_3", NTT_TYPE_LST[2:4])
plot_set("RECURSIVE", NTT_TYPE_LST[4:6])
plot_set("INPLACE", NTT_TYPE_LST[6:8])
