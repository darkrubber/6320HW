Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get 'users/index' => 'users#index'
  get 'users/index/:id' => 'users#show'
end
