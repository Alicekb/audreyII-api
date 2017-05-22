Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'auth_user' => 'authentication#authenticate_user'
  post 'signup' => 'users#create'
  namespace :v1 do
    resources :days, only: [:show]
    delete 'days/reset/:id', :to => 'days#reset'
    resources :weeks, only: [:index, :show, :create, :destroy]
    resources :meals, only: [:show, :create, :destroy]
  end
end
