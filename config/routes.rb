Rails.application.routes.draw do
  root to: 'missions#home'
  devise_for :users
  resources :charities, only:[:index, :show]do
    resources :missions, only: :create
  end
  resources :missions, only:[:index, :show] do
    resources :bookings, only: :create
  end
  resources :user_skills, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
