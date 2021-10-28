Rails.application.routes.draw do
  root "pages#home"

  get "about", to: "pages#about"

  resources :articles, only: %i[index show new create edit update] # [:index, :show]
end
