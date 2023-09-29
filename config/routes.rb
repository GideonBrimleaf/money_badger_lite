Rails.application.routes.draw do
  root "transactions#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :transactions, only: %i[index new edit create update destroy]
end
