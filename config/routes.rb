Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:create]
    post 'generate_text', on: :collection
  end
  root "questions#index"
end
