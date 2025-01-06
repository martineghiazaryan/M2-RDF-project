## Project Overview
This project involves the creation and analysis of the **Open Drug Knowledge Graph**, a relational dataset that integrates information about drugs, treatments, conditions, and prices. The project focuses on transforming relational data into a unified RDF knowledge graph, creating and executing queries to interrogate the RDF schema, and subsequently enriching the data using RDFS reasoning.

├── data/input/                  # Contains the source CSV files
│   ├── rug.csv                  # Drug information
│   ├── condition.csv            # Condition information
│   ├── source.csv               # Source references for conditions
│   ├── interactions.csv         # Drug interactions
│   ├── product.csv              # Product details
│   ├── manufacturer.csv         # Manufacturer information
│   ├── price.csv                # Product pricing details
│   └── store.csv                # Pharmaceutical stores
│
├── data/output/                 
│   ├── tarql_output/            # Combined TARQL output file
│   ├── rdf_output/              # Well-labeled RDF output after cleaning
│
├── tarql_files/                 # TARQL files to create RDF
│
├── scripts/                     
│   ├── run_tarql.sh             # Shell script to execute TARQL files and combine results
│   ├── clean_tarql.py           # Python script to clean and label TARQL output
│
└── queries/                     # Sparql queries


