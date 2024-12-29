#!/bin/bash

# Run Tarql for each file and produce individual RDF files
tarql tarql_files/drug.rq data/input/drug.csv > output_drugs.ttl
tarql tarql_files/condition.rq data/input/condition.csv > output_condition.ttl
tarql tarql_files/source.rq data/input/source.csv > output_source.ttl
tarql tarql_files/product.rq data/input/product.csv > output_product.ttl
tarql tarql_files/manufacturer.rq data/input/manufacturer.csv > output_manufacturer.ttl
tarql tarql_files/price.rq data/input/price.csv > output_price.ttl
tarql tarql_files/store.rq data/input/store.csv > output_store.ttl
tarql tarql_files/treatment.rq data/input/treatment.csv > output_treatment.ttl

# Combine all RDF files into a single temporary file
cat output_drugs.ttl \
    output_condition.ttl \
    output_source.ttl \
    output_product.ttl \
    output_manufacturer.ttl \
    output_price.ttl \
    output_store.ttl \
    output_treatment.ttl > output/final_output.ttl

# Remove duplicates while keeping the original order using awk
#awk '!seen[$0]++' combined_output.ttl > final_output.ttl

# Remove intermediate files to clean up the directory
rm output_drugs.ttl output_condition.ttl output_source.ttl \
   output_product.ttl output_manufacturer.ttl output_price.ttl \
   output_store.ttl output_treatment.ttl #combined_output.ttl

# Display a confirmation message
echo "Final file 'final_output.ttl' created."

