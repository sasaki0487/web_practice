Rails.application.routes.draw do
  root "home#index"
  get 'home', to: 'home#index'
  get 'home/index', to: 'home#index'
  get 'home/momo-gen', to: 'home#momo_gen'
  get 'home/random', to: 'home#random'
  get 'home/game', to: 'home#game'
  get 'home/resume', to: 'home#resume'
  get 'home/cats', to: 'home#cats'
  resources :comments, path: 'home/comments'
  post 'home/comments/new',to: 'comments#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
