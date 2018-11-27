Rails.application.routes.draw do
  resources :departments
  resources :payrolls do
    collection do
      post :import
    end
  end
  resources :jobroles
  resources :workspaces
  devise_for :users
  root 'root#index'

end
