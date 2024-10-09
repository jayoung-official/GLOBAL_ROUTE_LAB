#!/usr/bin/env python3
import subprocess
import datetime

INNOVUS_CMD = 'innovus'
SCRIPT_FILE = '5_random_run.tcl'
N_RUNS = 10

def run_script():
    try:
        result = subprocess.run(f'{INNOVUS_CMD} -files {SCRIPT_FILE}', shell=True)
        # timestamp = datetime.datetime.now().strftime("%y%m%d_%H%M%S")
        # with open(f'random_run_{timestamp}.log', 'w') as f:
        #     f.write(result.stdout)
        if result.stderr:
            print("Error:")
            print(result.stderr)
    except Exception as e:
        print(f"An error occurred: {e}")

for _ in range(N_RUNS):
	run_script()