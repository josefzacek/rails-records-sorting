Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'static_pages/about', to: 'static_pages#about', as: 'about'
  # get '/patients/:id', to: 'patients#show', as: 'patient'


  # get :terms_of_use, to: 'pages#terms_of_use', path: 'terms-of-use'
  # get 'terms-of-use', to: :terms_of_use, controller: 'pages'

  root 'products#index'

  resources :products, only: [:show, :index]

  namespace :admin do
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy] do
      collection { post :sort_products }
    end
  end

end
