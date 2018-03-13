Rails.application.routes.draw do

  root 'job_offers#index'

  get 'job_offers/new'

  resources :job_offers


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
