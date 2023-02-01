# Running this script in sbatch will train multiple neural networks on the same gpu.

import datetime

import subprocess
subprocess.call('pwd')

print('running mnist batch size sweep in parallel')

jobs = []
experiment_lst = ['8', '16', '32', '64']

for experiment in experiment_lst:
    time_str = str(datetime.datetime.today())
    print(experiment, ' at time:', time_str)
    with open("b_" + experiment + time_str + ".txt", "w") as f:
        jobs.append(subprocess.Popen(['python', 'main.py', '--batch-size', experiment], stdout=f))

for job in jobs:
    job.wait()
