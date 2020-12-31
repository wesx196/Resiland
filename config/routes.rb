Rails.application.routes.draw do
  resources :comments
  resources :messages
  resources :infos
  get 'login/index'
  get 'user/home'
  get 'contact/index'
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
