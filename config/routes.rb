Rails.application.routes.draw do
  resources :jobs
  resources :organizations
  resources :volunteers
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
