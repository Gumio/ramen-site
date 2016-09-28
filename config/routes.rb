Rails.application.routes.draw do

  root 'top_pages#home'
  get 'about' => 'top_pages#about'
  get 'help' => 'top_pages#help'
  post 'search'   => 'shops#index'
  get  'search'   => 'shops#index'
  get 'prefectures' => 'prefectures#index'
  post 'prefectures' => 'prefecture#index'
  get 'prefectures/:id' => 'prefectures#show', :as => :prefecture 
  get 'rank'      => 'shops#ranking'
  get 'shops/:id'  => 'shops#show', :as => :shop

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
