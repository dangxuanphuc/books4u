Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}

  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"

  namespace :admin do
    root "static_pages#show", page: "dashboard"
    get "/pages/:page" => "static_pages#show"

    resources :users, except: %i(show edit)
    resources :borrows
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
    resources :comments, only: %i(create destroy) do
      resources :votes, only: %i(create destroy)
    end
    resource :suggest_books, only: :create
    resource :rate, only: :create
    resources :book_marks, only: %i(create destroy)
  end
  resources :search, only: :index
  resources :users, only: :show
  resources :categories, only: %i(index show)
  resources :borrows, only: %i(create update)
  resources :explorer, only: :index
  resources :tags, only: %i(index show)

  namespace :blog do
    root "dashboard#index"
    resources :posts, only: %i(index show create edit update destroy) do
      resources :comments, only: %i(create destroy) do
        resources :votes, only: %i(create destroy)
      end
    end
  end
  resources :read_online, only: :show
  resources :authors, only: :show
  resources :announcements, only: %i(index show)
  resources :not_found, only: :index
  resources :requests, only: %i(index create update)
  resources :notifications, only: %i(index update)
  patch "/make_all_as_read" => "make_all_as_read#update"
  resources :feedback, only: %i(index new create show update)

  mount ActionCable.server => "/cable"
  resources :messages
end
