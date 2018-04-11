Rails.application.routes.draw do

  resources :todos do
    put :sort
  end

  root to: 'todos#index'
end
