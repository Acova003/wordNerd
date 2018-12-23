Rails.application.routes.draw do
  resources :assignments
  root 'assignments#index'
  root 'pages#home'
  get 'pages/home'
  get 'pages/responses'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
