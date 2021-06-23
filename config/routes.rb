Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :companies do
        resources :offers do
          resources :postulants do
            get '/:offer_id/state', to: 'postulants#state', as: 'postulants_state'
          
          end
        end
      end
      resources :users do
        get 'postulants'
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
