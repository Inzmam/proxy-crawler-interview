Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :amazon_pages do
    member do
      get 'run_crawler'
    end
  end

  resources :products
  post 'authenticate', to: 'authentication#authenticate'

end
