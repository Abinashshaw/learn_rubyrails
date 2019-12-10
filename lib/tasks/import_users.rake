namespace :import_users do
  desc "import data from a csv file"
  task data: :environment do
    require 'csv'
    filename = File.join Rails.root, "users.csv"
    counter = 0

    CSV.foreach(filename) do |row|
      name = row[0]
      email = row[1]
      phone = row[2]
      user = User.create(user_name: name, user_email: email, phone_number: phone)
      counter += 1 if user.persisted?
    end

    puts "Imported #{ counter } users"
  end
end
