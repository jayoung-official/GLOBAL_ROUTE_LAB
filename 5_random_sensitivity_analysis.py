#!/usr/bin/env python3
import subprocess

N_RUNS = 5

def run_script():
    try:
        result = subprocess.run('innovus -files 5_random_run.tcl', shell=True)
        if result.stderr:
            print("Error:")
            print(result.stderr)
    except Exception as e:
        print(f"An error occurred: {e}")

for _ in range(N_RUNS):
    run_script()
