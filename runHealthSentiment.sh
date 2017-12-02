#!/bin/bash

DataPath='dataset/sample.json'
BusinessDataPath='dataset/sample_business.json'

OutputPath='output'

NumClusters=100
Filter_Reviews_By_Relevency_Percentile=.35

python3 text_clean.py $DataPath $OutputPath $NumClusters --verbose
python3 filter_data.py $OutputPath

read -p "Insert column and manually label relavent clusters of clusters.csv with 0 or 1, then Press [Enter] key to start parse_counts..."

python3 parse_counts.py $OutputPath $DataPath $Filter_Reviews_By_Relevency_Percentile

python3 sentiment.py $OutputPath $BusinessDataPath