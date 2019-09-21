Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: :new
  get '/students', to: 'students#index', as: 'students'
  get '/student/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create'
end
