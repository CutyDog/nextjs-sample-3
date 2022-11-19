Rails.application.routes.draw do
  namespace :api do
    resources :makers, only: [:index, :show]
    resources :bikes, only: [:index, :show]
  end
end
