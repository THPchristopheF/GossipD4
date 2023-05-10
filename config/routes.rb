Rails.application.routes.draw do
  get 'dynamic_pages/profile' 
  get 'dynamic_pages/profile/:id', to: 'dynamic_pages#profile'
  get 'dynamic_pages/gossip'
  get 'dynamic_pages/gossip/:id', to: 'dynamic_pages#gossip'
  get 'welcome/:first_name', to: 'welcome#show'
  root 'static_pages#home'
  get 'static_pages/team', to: 'static_pages#team'
  get 'static_pages/contact', to: 'static_pages#contact'
  get 'static_pages/home', to: 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index
end
