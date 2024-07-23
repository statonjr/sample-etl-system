# frozen_string_literal: true

require 'kiba'
require_relative 'etl/sample_job'

namespace :etl do
  desc 'Run the sample job'
  task :sample_job, [:filename] do |_t, args|
    config = { filename: args[:filename] }
    job = ETL::SampleJob.setup(config)
    Kiba.run(job)
  end
end

namespace :setup do
  desc 'Generate a sample CSV file'
  task :csv_file do
    require 'faker'
    require 'csv'

    CSV.open('sample.csv', 'wb') do |csv|
      # Write the header row
      csv << ['First Name', 'Last Name', 'Address', 'City', 'State', 'PostalCode']

      # Generate 100 rows of fake names
      100.times do
        first_name = Faker::Name.first_name
        last_name = Faker::Name.last_name
        address = Faker::Address.street_address
        city = Faker::Address.city
        state = Faker::Address.state_abbr
        postal_code = Faker::Address.zip_code
        csv << [first_name, last_name, address, city, state, postal_code]
      end
    end
  end
end
