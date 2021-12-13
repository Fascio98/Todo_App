Rails.application.routes.draw do
  resources :customers
  resources :reference_between_projects_and_categories
  resources :categories
  resources :tasks
  root to: 'projects#index'
  resources :projects
  get 'hello', to:'projects#hello'

  resources :users

  get 'countries/fetch_cities'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
