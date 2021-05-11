Rails.application.routes.draw do
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/:first_name', to: 'welcome#show'
  root 'gossips#index'
  get '/', to: 'gossips#index'
  get 'gossips/:gossip_index', to: 'gossips#show', as: 'gossip'
  get 'users/:user_index', to: 'users#show', as: 'user'
end
