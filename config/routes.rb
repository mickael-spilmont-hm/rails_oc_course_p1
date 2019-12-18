Rails.application.routes.draw do
  root 'pages#home'
  
  get 'contact' => 'pages#contact'

  get 'books' => 'books#index'
  post 'books' => 'books#create'
end
