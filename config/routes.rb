Rails.application.routes.draw do
  root 'api_responses#index'
  resources :api_responses
end
