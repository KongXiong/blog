Rails.application.routes.draw do
 

  devise_for :authors

  namespace :authors do
    resources :posts
  end

  scope module: 'blog' do
    get "about", to: "pages#about", as: :about
    get "contacts", to: "pages#contacts", as: :contacts
    get "posts", to: "posts#index", as: :posts
    get "posts/:id",  to: "posts#show", as: :post
  end

  root 'blog/pages#home'

end
