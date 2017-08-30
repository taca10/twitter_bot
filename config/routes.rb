Rails.application.routes.draw do
  root 'tweets#new'
  resources :tweets, only: [:new, :create] do
    collection do
      get 'post'
    end
  end
end
