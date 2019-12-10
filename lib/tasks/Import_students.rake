namespace :import_students do
  desc "import data from a csv file"
  task data: :environment do
    require 'csv'
    filename = File.join Rails.root, "students.csv"
    counter = 0

    CSV.foreach(filename) do |row|
      name = row[0]
      email = row[1]
      phone = row[2]
      student = Student.create(name: name, email: email, phone_number: phone)
      counter += 1 if student.persisted?
    end

    puts "Imported #{ counter } students"
  end
end
