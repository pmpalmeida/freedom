Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "sobre", to: 'pages#sobre', as: :"sobre" #about page
  get "politica-de-privacidade", to: 'pages#politicadeprivacidade', as: :"politica-de-privacidade" #politica-de-privacidade
  get "termos-de-uso", to: 'pages#termosdeuso', as: :"termos-de-uso" #termos-de-uso
  get "obrigado", to: 'pages#obrigado', as: :"muito-obrigado" #termos-de-uso
  get "curriculocampeao", to: 'pages#curriculocampeao', as: :"curriculo-campeao" #bonus 1



#POSTS---------------------------------------------------------------------------------------------

  get "como-nasceu-o-projeto-entrevista-descomplicada", to: 'blog#post0', as: :"como-nasceu-o-projeto-entrevista-descomplicada"  #POST 0
  get "como-identificar-pontos-de-melhoria-em-processos-seletivos", to: 'blog#post1', as: :"como-identificar-pontos-de-melhoria-em-processos-seletivos" #POST 1
  get "quais-os-pilares-de-um-bom-curriculo", to: 'blog#post2', as: :"quais-os-pilares-de-um-bom-curriculo" #POST 2
  get "as-5-perguntas-mais-comuns-em-entrevistas", to: 'blog#post3', as: :"as-5-perguntas-mais-comuns-em-entrevistas" #POST 3
  get "bla-bla5", to: 'blog#post4', as: :"bla-bla5" #POST 4





end
