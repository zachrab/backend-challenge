Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Friendships related routes
  post 'friendships', to: 'friendships#create'

  # Members related routes
  post 'members', to: 'members#create'
  get 'members', to: 'members#index'
  get 'members/:member_id', to: 'members#show'
end
