Rails.application.routes.draw do
  post 'auth/login', to: 'authentication#authenticate'

  resources :states do
    resources :cities
  end

  post 'signup', to: 'users#create'
  post "/users/visits" => "visits#create"
  delete "/users/visits/:id" => "visits#destroy"

  resources :users, :except => [:create,:delete]  do
    get "/visits/states" => "visits#states_index"
    resources :visits
  end

end
