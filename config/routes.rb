Apple2hand::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users

  resources :products

  namespace :admin do
    resources :users
  end

  #root :to => 'high_voltage/pages#show', :id => 'welcome'
  root :to => "products#index"
  
end
