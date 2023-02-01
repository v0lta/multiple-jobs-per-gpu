# multiple_jobs_one_gpu

This Repository is meant to showcase how to run multiple jobs on 
a single GPU.

The file `main.py` contains to train code which trains a
CNN on the well known mnist data set.

Run an initial single experiment by typing 
`
sbatch first_run.sh
`
This first run will download the data set. If you ssh into 
loewenburg150 and type gpustat you will see that it hardly 
uses the cards to their full potential.

You can then run a hyperparameter sweep exploring different
batch sizes by typing
`
sbatch run.sh
`
feel free to take a look at fork.py to see how it works.

gpustat is a nice tool to see how much memory
each process is using.
https://github.com/wookayin/gpustat