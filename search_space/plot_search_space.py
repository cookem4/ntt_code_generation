import pandas as pd
import matplotlib.pyplot as plt
import subprocess

NTT_TYPE_LST = ["TYPE_MTX", "TYPE_N2_1", "TYPE_N2_2", "TYPE_N2_3", "TYPE_FAST_FIXED", "TYPE_FAST_MIXED", "TYPE_FAST_FIXED_INPLACE", "TYPE_FAST_MIXED_INPLACE"] 

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

for ntt_type in NTT_TYPE_LST:
    # Load the CSV file into a pandas DataFrame
    df = pd.read_csv(ntt_type + "_data_sweep.csv")

    # Define the columns to plot against "Dim"
    columns_to_plot = ["Runtime", "Heap", "IR Cnt", "Code Size B", "Func Size B"]

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
