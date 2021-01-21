Rails.application.routes.draw do

  resources :evaluations
  resources :oenologists
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :assemblies
  resources :strains
  resources :wines
  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
