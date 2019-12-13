# Rails Assignment

1. Initialize Rails Application with MySql database.
2. Setup root_path with index action of HomeController for this application.
3. Add a button at home page. By clicking this button one CSV file will be downloaded where CSV file will contain 50 Users record i.e. user_name, user_email, phone_number. This users list should be ordered by their names.
4. Add a button at home page. By clicking this button one PDF file will be downloaded where PDF file will contain 50 Employees record i.e. name, email, phone_number. This employees list should be ordered by their names.
5. Add a button at home page. By clicking this button one mail will be fired where mail will contain 50 Students record i.e. name, email, phone_number. This students list should be ordered by their names.
6. Add a form to ImagesController where we could upload an image and store them. There will be a page where we could see all the images and by clicking on this image name we could see this image.
7. Add a controller with CRUD operation for a model where this model contains the following attributes: 
    i) name, this field should not be null and should be unique.
    ii) email, this field should not be null, should be unique and should be validated with email format.
    Use database level validation also where required.

    Above index page should contain a search form by which we could search an object with their name or email where input value of search field is case insensitive and would be full or part of object's name or email.

special features
rake tasks to create database record for Students, Employees and Users
client side verification mechanism

You will need to run:
bundle install --without production
rake import_users:data
rake import_employees:data
rake import_students:data
