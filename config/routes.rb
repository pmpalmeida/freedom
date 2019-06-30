Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#POSTS---------------------------------------------------------------------------------------------

  get "bla-bla", to: 'blog#post0', as: :"bla-bla"
  get "bla-bla2", to: 'blog#post1', as: :"bla-bla2"
  get "bla-bla3", to: 'blog#post2', as: :"bla-bla3"




end
