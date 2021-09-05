Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "billboards#index"

  resources :billboards do
    resources :artists
    resources :songs
  end

end

