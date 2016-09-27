Rails.application.routes.draw do
  root'top_pages#home'
  get 'search' => 'top_pages#search'
  get 'prefecture' => 'top_pages#prefecture'
  get 'rank' => 'top_pages#rank'
  get 'about' => 'top_pages#about'
  get 'help' => 'top_pages#help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
