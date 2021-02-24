Rails.application.routes.draw do
  #get 'dashboard/index'
  namespace :api do
    namespace :v1 do
      resources :contacts, only: [:index, :create, :update, :destroy] do
        collection do
          get 'search'

        end
      end
    end
  end

  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
