Rails.application.routes.draw do
  resources :my_foos
  root "my_foos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
