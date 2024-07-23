# Sample ETL System

A simple extract, transform, and load system using Kiba. This system reads extracts data from a CSV file, transforms the data by making strings uppercased, and the loads it into a different CSV.

## Up and Running

### Dependencies

- Ruby (see `.ruby-version`)
- Bundler (`gem install bunder`)

### Running

```
rake 'etl:sample_job[sample.csv]'
```
