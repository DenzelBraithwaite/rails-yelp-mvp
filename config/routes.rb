Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
end

  # watch video part where he ensures review references restaurant

  # resources :restaurants do
  #   collection do
  #     get :index
  #     get :create
  #     get :new
  #     get :show
  #   end
  #   member do
  #     get :new
  #     get :create
  #   end
  # end
# end
