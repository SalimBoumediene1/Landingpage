Rails.application.routes.draw do
  get 'home/index'
  get 'home/android'
  get 'home/manga'
  root 'home#index'
end
