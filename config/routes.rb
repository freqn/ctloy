Rails.application.routes.draw do
  get 'user_pages/home'
  get 'user_pages/help'
  root to: "user_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
