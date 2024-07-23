# frozen_string_literal: true

module ETL
  module Transforms
    # A transform to upcase each of the columns in a row
    class UpcaseRow
      def process(row)
        row.each do |k, v|
          row[k] = v.upcase
        end
      end
    end
  end
end
