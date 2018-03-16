Rails.application.routes.draw do

  # ROOT
 	root 'home#index'


  # DEVISE
  devise_for :users, path: 'users', controllers: {sessions: 'users/sessions'}
  devise_for :userpros, controllers: {sessions: 'userpros/sessions'}


  # TABLEAUX DE BORD
  get '/tableau-de-bord-extra', to: 'users#dashboard', as: :user_dashboard
  get '/tableau-de-bord-restaurateur', to: 'userpros#dashboard', as: :userpro_dashboard


  # CANDIDATURES
  get '/postuler', to: 'users#apply_for_job', as: :apply_for_job
  get '/annuler', to: 'users#cancel_job_candidacy', as: :cancel_job_candidacy

resources :job_offers


end
