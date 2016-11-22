Rails.application.routes.draw do
  resources :posts
  resources :advertisments

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
