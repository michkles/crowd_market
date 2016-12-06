Rails.application.routes.draw do
  devise_for :users, controllers: { :registrations => "users/registrations",
                                    :sessions => "users/sessions" }

  root "posts#index"

  resources :posts

  # devise_scope :user do
  # 	root to: "devise/sessions#new"
  #   resources :posts
	# end
  #
  get 'users/show' => 'users/pages#show', as: 'user_profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
