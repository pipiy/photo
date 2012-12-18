Photo::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  devise_for :users do
    match '/home' => "application#home", as: :user_root
  end

  authenticated :user do
    root to: 'application#home'
  end

  root :to => "welcome#page"

  resources :galleries do
    resources :pictures do
      collection do
        post 'make_default'
      end
    end
  end
end
