Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :patients 
  resources :users
  post '/validate', :controller=>'patients', :action=>'checker'
  root 'patients#index'
end
