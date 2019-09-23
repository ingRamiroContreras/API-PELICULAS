Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :movies

  resources :movies do
    resources :reservas
  end

  resources :reservas
end
