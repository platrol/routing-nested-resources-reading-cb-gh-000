Rails.application.routes.draw do

  resources :authors, only: [:show] do
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update] do

  end

  root 'posts#index'

end
