Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # next line added 14 may 17
  root 'quotes#index'
  # next line added 16 may 17
  resources :quotes
end
