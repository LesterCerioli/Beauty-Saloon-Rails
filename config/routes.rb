Rails.application.routes.draw do
  
  resources :appointments
  resources :attendants
  resources :customers
  resources :addresses
  resources :saloons
  
  
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end
