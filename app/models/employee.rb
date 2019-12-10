class Employee < ApplicationRecord
  def self.to_pdf
    pdf = Prawn::Document.new
    self.all.each do |employee|
      pdf.text "#{ employee.name } \t #{ employee.email } \t #{ employee.phone_number } \n "
    end

    pdf.render
  end
end
