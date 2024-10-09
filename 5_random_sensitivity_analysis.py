#!/usr/bin/env python3
import subprocess

INNOVUS_CMD = 'innovus'
SCRIPT_FILE = '5_random_run.tcl'
N_RUNS = 10

def run_script():
    try:
        result = subprocess.run(f'{INNOVUS_CMD} -files {SCRIPT_FILE}', shell=True)
        if result.stderr:
            print("Error:")
            print(result.stderr)
    except Exception as e:
        print(f"An error occurred: {e}")

for _ in range(N_RUNS):
	run_script()