Rails.application.routes.draw do
  resources :hars, only: %i(create show)
end
