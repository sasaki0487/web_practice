Rails.application.routes.draw do
  get 'home/index', to: 'home#index'
  get 'home/momo-gen', to: 'home#momo_gen'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
