Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#index' 

  get 'static_pages/index'

  scope :api do
  	scope :v1 do
  		resources :messages, :only=>[:index]
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
