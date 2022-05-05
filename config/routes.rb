Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'posts' => 'blog_post#index', as: 'posts'
  get 'posts/new' => 'blog_post#new', as: 'new_post'
  get 'posts/:id' => 'blog_post#show', as: 'post'
  post 'posts' => 'blog_post#create'

  #  root "blog_post#index"

end

