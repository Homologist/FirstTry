Rails.application.routes.draw do
  resources :documents
  get 'study/index'
  post "documents/convert/:id", to: "documents#convert", as: :convert
 
  
 resources :outputs do
  resources :comments
 end
 
  resources :outputs do
  resources :fileviews
 end
 
 
  root 'study#index'
end
