# frozen_string_literal: true

require_relative 'etl/sample_job'

config = { filename: 'sample.csv' }
job = ETL::SampleJob.setup(config)
Kiba.run(job)
