Rails.application.routes.draw do

  resources :todos do
    put :sort
  end

  get 'todos' => 'todos#index'
end
