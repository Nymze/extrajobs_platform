Rails.application.routes.draw do

 

  get 'static_pages/userprohome'

  get 'static_pages/userhome'

  devise_for :users, path: 'users', controllers: {
        sessions: 'users/sessions'
      }
  devise_for :userpros, controllers: {sessions: 'userpros/sessions'}

  get 'job_offers/index'

  get 'job_offers/new'

  resources :job_offers

  root 'static_pages#home'

  authenticated :users do
  root 'job_offers#index'
	end

	authenticated :userpros do
  root 'static_pages#userprohome'
end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
