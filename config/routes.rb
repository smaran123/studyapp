Rails.application.routes.draw do



  get 'school_sessions/new'

  get 'school_passwords/new'

  namespace :admin do
  get 'schools/new'
  end

  devise_for :admins,:controllers => {:sessions => "admin/sessions",:passwords => "admin/passwords"}
  devise_for :school_admins, :controllers => {:sessions => 'school_sessions', :passwords => 'school_passwords'}
  devise_scope :admin do
    get "admin_login",:to => "admin/sessions#new" ,:as => "admin_login"
    get "admin_sign_out", :to => "admin/sessions#destroy",:as => "admin_logout"
  end
  root 'home#index'
  namespace :admin do
    resources :sessions
    resources :dashboards
    resources :schools
  end



end

