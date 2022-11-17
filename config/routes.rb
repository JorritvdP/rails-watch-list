Rails.application.routes.draw do
  # get 'bookmarks/index'
  # get 'bookmarks/show'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "movies#index"
  resources :lists do
    resources :bookmarks, only: %I[new create]
  end
  resources :bookmarks, only: [:destroy]
end
