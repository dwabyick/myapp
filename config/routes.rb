Myapp::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end

  devise_for :users
  resources :users

  root :to => redirect("/users/sign_in")
#  devise_scope :user do
 #   root :to => "devise/sessions#new"
 # end
end