Rails.application.routes.draw do
  root 'home#index'
  get 'home/users', to: 'home#export_users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
