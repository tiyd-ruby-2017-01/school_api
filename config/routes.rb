Rails.application.routes.draw do
  get '/search', to: 'search#index'

  resources :students
  resources :teachers
  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
