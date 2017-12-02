# Yelp-Health-Scoring
# Arjun Chintapalli, Gowri Nayar, Vaishali Sarathy, David Suh
**********  Download Yelp Dataset from https://www.yelp.com/dataset and place in dataset folder ******

Then run following to output all files in "output" directory:
  sh runHealthSentiment.sh

There is an intermediary step, where the terminal pauses and you have to label the clusters from cluster.csv, see the sample_output example for an example formatting. 

Currently the shell script successfully runs on subsamples of the dataset contained within this repo.

For testing on full size dataset, change datapaths in shell script to the appropriate json files after downloading from https://www.yelp.com/dataset.

Feel free to use with citations, and enjoy!
