Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "sobre", to: 'pages#sobre', as: :"sobre" #about page
  get "politica-de-privacidade", to: 'pages#politicadeprivacidade', as: :"politica-de-privacidade" #politica-de-privacidade
  get "termos-de-uso", to: 'pages#termosdeuso', as: :"termos-de-uso" #termos-de-uso
  get "obrigado", to: 'pages#obrigado', as: :"muito-obrigado" #termos-de-uso



#POSTS---------------------------------------------------------------------------------------------

  get "myth-my-homebrewed-admin-panel-works-fine-thanks", to: 'blog#post0', as: :"myth-my-homebrewed-admin-panel-works-fine-thanks"  #POST 0
  get "bla-bla2", to: 'blog#post1', as: :"bla-bla2" #POST 1
  get "testexyz", to: 'blog#post2', as: :"testexyz" #POST 2
  get "bla-bla4", to: 'blog#post3', as: :"bla-bla4" #POST 3
  get "bla-bla5", to: 'blog#post4', as: :"bla-bla5" #POST 4




end
