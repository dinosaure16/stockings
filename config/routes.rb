Rails.application.routes.draw do
  devise_for :users
  # 'home/index'
  root'home#index'
  get 'home/about'
  post "/" => 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
