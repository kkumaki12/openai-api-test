Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/show'
  get 'questions/new'
  get 'questions/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
