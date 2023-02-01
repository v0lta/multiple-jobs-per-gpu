# multiple_jobs_one_gpu

This Repository is meant to showcase how to run multiple jobs on 
a single GPU.

The file `main.py` contains to train code which trains a
CNN on the well known mnist data set.

Run an initial single experiment by typing 
``` bash
sbatch first_run.sh
```
If you run the tensorboard profiler as described in https://pytorch.org/tutorials/intermediate/tensorboard_profiler_tutorial.html
you will notice the code is hardly using its gpu to it's full potential.

You can then run a hyperparameter sweep exploring different
batch sizes on a `single GPU in parallel` via:
``` bash
sbatch run.sh
```
feel free to take a look at fork.py to see how it works.

on your local machine gpustat is a nice tool to see how much memory
each process is using https://github.com/wookayin/gpustat .
