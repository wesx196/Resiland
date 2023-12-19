Rails.application.routes.draw do
  resources :apps
  resources :new_projects
  resources :news
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :sales
  get 'listing/index'
  get 'timberside/index'
  get 'tyne2/index'
  get 'petty/index'
  get 'new_developments/index'
  get 'project/index'
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
