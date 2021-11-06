Rails.application.routes.draw do

  get '/meals/search', to: "meals#search"

  resources :meals
  resources :meal_plans
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
