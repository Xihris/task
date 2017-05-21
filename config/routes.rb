Rails.application.routes.draw do

  devise_for :users
  root 'users#index'

  resources :authors, :users, :eau_tasks, except: [:destroy]
  resources :tasks_temps, only: [:new, :create, :destroy, :index]
  resources :units, except: [:destroy, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
