Rails.application.routes.draw do
  get '/', to: 'home#index'
  get 'home/index'
  get 'home/android'
  get 'home/manga'
  root 'home#index'
end
