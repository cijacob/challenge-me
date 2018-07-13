Rails.application.routes.draw do
  
  get 'categories/index'

  scope "/:locale" do
    resources :challenges

    resources :categories do
      resources :challenges
    end
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
