Rails.application.routes.draw do
  # get 'question/index'
  #
  # get 'question/show'
  #
  # get 'question/new'
  #
  # get 'question/create'
  #
  # get 'question/delete'

  resources :posts
  resources :questions
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
