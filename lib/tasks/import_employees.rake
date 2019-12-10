namespace :import_employees do
  desc "import data from a csv file"
  task data: :environment do
    require 'csv'
    filename = File.join Rails.root, "employees.csv"
    counter = 0

    CSV.foreach(filename, headers: true) do |row|
      row
      email = row[1]
      phone = row[2]
      employee = Employee.create(name: row["Name"], email: email, phone_number: phone)
      counter += 1 if employee.persisted?
    end

    puts "Imported #{ counter } employees"
  end
end
