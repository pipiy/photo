Photo::Application.routes.draw do

  resources :contact, :only => [:new, :create]
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  devise_for :users do
    match '/home' => "application#home", as: :user_root
  end

  authenticated :user do
    root to: 'application#home'
  end

  resources :paintings

  match '/subscribe' => "application#subscribe"


  root :to => "welcome#page"
end
