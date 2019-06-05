Rails.application.routes.draw do
  root to: 'projects#home'
  devise_for :users
  resources :users, only: :show
  resources :charities, only:[:index, :show] do
    resources :projects, only: :create
  end

  resources :projects, only:[:home, :index, :show] do
    resources :missions, only: :create
  end

  resources :missions, only:[:index, :show] do
    resources :bookings, only: :create
  end

  resources :user_skills, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
