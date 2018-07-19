Rails.application.routes.draw do
  get 'users/home'
  get 'users/help'
  root to: "users#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
