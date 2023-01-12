Rails.application.routes.draw do
  resources :activities, only:[:index, :destroy]
  resources :signups
  resources :campers, only:[:index, :show]

  
end
