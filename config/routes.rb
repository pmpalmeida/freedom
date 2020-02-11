Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "sobre", to: 'pages#sobre', as: :"sobre" #about page
  get "politica-de-privacidade", to: 'pages#politicadeprivacidade', as: :"politica-de-privacidade" #politica-de-privacidade
  get "termos-de-uso", to: 'pages#termosdeuso', as: :"termos-de-uso" #termos-de-uso
  get "obrigado", to: 'pages#obrigado', as: :"muito-obrigado" #termos-de-uso
  get "curriculocampeao", to: 'pages#curriculocampeao', as: :"curriculo-campeao" #bonus 1

  #paginas de lançamentoo

  get "lan-inscricao", to: 'pages#lan_inscricao', as: :"lan-inscricao"
  get "lan-obrigado", to: 'pages#lan_obrigado', as: :"lan-obrigado"
  get "lan-live", to: 'pages#lan_live', as: :"lan-live"
  get "lan-confirmacao", to: 'pages#lan_confirmacao', as: :"lan-confirmacao"



#POSTS---------------------------------------------------------------------------------------------

  get "como-nasceu-o-projeto-entrevista-descomplicada", to: 'blog#post0', as: :"como-nasceu-o-projeto-entrevista-descomplicada"  #POST 0
  get "como-identificar-pontos-de-melhoria-em-processos-seletivos", to: 'blog#post1', as: :"como-identificar-pontos-de-melhoria-em-processos-seletivos" #POST 1
  get "quais-os-pilares-de-um-bom-curriculo", to: 'blog#post2', as: :"quais-os-pilares-de-um-bom-curriculo" #POST 2
  get "as-5-perguntas-mais-comuns-em-entrevistas", to: 'blog#post3', as: :"as-5-perguntas-mais-comuns-em-entrevistas" #POST 3
  get "como-falar-sobre-qualidades-e-defeitos-em-uma-entrevista-de-trabalho", to: 'blog#post4', as: :"como-falar-sobre-qualidades-e-defeitos-em-uma-entrevista-de-trabalho" #POST 4
  get "como-escrever-seu-curriculo-sem-ter-experiencias-profissionais", to: 'blog#post5', as: :"como-escrever-seu-curriculo-sem-ter-experiencias-profissionais" #POST 5
  get "como-lidar-com-exigencias-absurdas-de-entrevistas-de-emprego", to: 'blog#post6', as: :"como-lidar-com-exigencias-absurdas-de-entrevistas-de-emprego" #POST 6
  get "bla-bla5", to: 'blog#post4', as: :"bla-bla5" #POST 4





end
