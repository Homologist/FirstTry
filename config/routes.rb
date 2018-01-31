Rails.application.routes.draw do
  get 'study/index'
  
 
  
 resources :outputs do
  resources :comments
 end
 
  resources :outputs do
  resources :fileviews
 end
 
 
  root 'study#index'
end
