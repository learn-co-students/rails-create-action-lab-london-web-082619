Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
  # post '/student'
  post '/student', to: 'students#post', as: 'post_student'
end
