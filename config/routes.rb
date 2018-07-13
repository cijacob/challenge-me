Rails.application.routes.draw do

  get 'challenges/index'
  get 'challenges/new'
  get 'categories/index'

  resources :categories do
   resources :challenges
  end

  devise_for :users
  get 'welcome/index'
  get '/about', to: 'welcome#about'
  get '/career', to: 'welcome#career'
  get '/partner', to: 'welcome#partner'
  get '/follow', to: 'welcome#follow'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:locale' => 'welcome#index'
end
