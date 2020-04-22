Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}

  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"

  namespace :admin do
    root "static_pages#show", page: "dashboard"
    get "/pages/:page" => "static_pages#show"

    resources :users, except: %i(show edit)
    resources :requests
    resources :authors do
      resources :books
    end
    resources :books do
      resources :book_items
    end
    resources :categories, except: %i(show edit)
    resources :publishers do
      resources :books
    end
  end

  resources :books, only: %i(index show) do
    resource :comments, only: :create
  end
  resources :search, only: :index
  resources :categories, only: %i(index show)
  resources :borrows, only: :create
  resources :explorer, only: :index
  resources :tags, only: %i(index show)

  namespace :blog do
    root "dashboard#index"
    resources :posts, only: %i(index show create edit update destroy)
  end
  resources :read_online, only: :show
  resources :authors, only: :show
end
