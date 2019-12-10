Rails.application.routes.draw do
  root 'home#index'
  get "/home/users", to: "home#export_users"
  get "/home/employees", to: "home#export_employees"
  get "students", to: "home#students"
  get "about", to: "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
