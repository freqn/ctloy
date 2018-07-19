Rails.application.routes.draw do
  root 'user_pages#home'
  get '/help',    to: 'user_pages#help'
  get '/contact', to: 'user_pages#contact'
  get '/about',   to: 'user_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
