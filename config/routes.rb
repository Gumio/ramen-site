Rails.application.routes.draw do
  get 'prefectures/show'

  root 'top_pages#home'
  get 'about' => 'top_pages#about'
  get 'help' => 'top_pages#help'
  post 'search'   => 'shops#index'
  get  'search'   => 'shops#index'
  get 'rank'      => 'shops#ranking'
  get 'shop/:id'  => 'shops#show', :as => :shop

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
