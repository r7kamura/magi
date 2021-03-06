Altria::Application.routes.draw do
  root to: "jobs#index"

  resources :jobs, shallow: true do
    resources :builds, only: [:index, :show, :create, :update, :destroy]
  end

  resources :events, only: :index if Rails.configuration.cache_classes
end
