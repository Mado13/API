Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :books, only: [:index, :show]
      resources :users, param: :_user_name
      post '/auth/login', to: 'authentication#login'
      get '/*a', to: 'application#not_found'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
