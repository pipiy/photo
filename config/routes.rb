Photo::Application.routes.draw do
  get "pictures/controller"

  get "galleries/controller"

  root :to => "welcome#page"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_for :users do
    get "/", :to => "devise/registrations#new"
    match '/home' => "application#home", as: :user_root
  end

  resources :galleries do
    resources :pictures do
      collection do
        post 'make_default'
      end
    end
  end
end
