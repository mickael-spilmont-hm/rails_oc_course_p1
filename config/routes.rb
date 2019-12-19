Rails.application.routes.draw do
  # get 'pages#home'
  # get 'contact' => 'pages#contact'

  root 'books#index'
  post 'books' => 'books#new'

  get 'books/:id' => 'books#show'
  patch 'books/:id' =>'books#update'
  delete 'books/:id' =>'books#delete'
end
