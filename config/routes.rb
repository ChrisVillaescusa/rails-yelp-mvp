Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  root :to => "restaurants#index"
  # get 'reviews/index'

  # get 'reviews/show'

  # get 'reviews/create'

  # get 'reviews/new'

  # get 'reviews/destroy'

  # get 'reviews/edit'

  # get 'restaurants/index'

  # get 'restaurants/show'

  # get 'restaurants/create'

  # get 'restaurants/new'

  # get 'restaurants/update'

  # get 'restaurants/destroy'

  # get 'restaurants/edit'

  # resources: restaurants

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
