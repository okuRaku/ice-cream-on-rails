Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :foods, only: [:index]
      resources :trucks, only: [:index, :show]
      put 'trucks/:id/sell', to: 'trucks#sell'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
