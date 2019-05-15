Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    # like this because a review is linked to a restaurant
    resources :reviews, only: [:new, :create]
  end
end
