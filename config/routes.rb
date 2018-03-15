Rails.application.routes.draw do
  
  get 'doses/new'

  resources :cocktails, :doses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
