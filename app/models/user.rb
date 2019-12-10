class User < ApplicationRecord
  def self.to_csv(fields = column_names, options = { })
    require 'csv'
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |result|
        csv << result.attributes.values_at(*fields)
      end
    end
  end
end
