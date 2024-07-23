# frozen_string_literal: true

require 'kiba'
require 'kiba-common/sources/csv'
require 'kiba-common/destinations/csv'
require_relative 'transforms/upcase_row'

module ETL
  # A sample Kiba job with all the parts
  module SampleJob
    module_function

    def setup(config)
      Kiba.parse do
        pre_process do
          puts 'Starting ETL Job...'
        end

        # Responsible for extracting the data
        source Kiba::Common::Sources::CSV, filename: config[:filename],
                                           csv_options: { headers: true, header_converters: :symbol }

        # Transform the data
        transform Transforms::UpcaseRow
        transform(&:to_h)

        # Load it somewhere else
        destination Kiba::Common::Destinations::CSV, filename: 'output.csv'

        post_process do
          puts 'Ending ETL Job'
        end
      end
    end
  end
end
