Rails.application.routes.draw do
  devise_for :users
  root to: 'indoors#index'
  resources :indoors do
   resources :messages
  end
end
