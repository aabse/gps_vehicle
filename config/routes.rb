Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :gps, :only => [:create]
    end
  end

  get 'show', to: 'api/v1/gps#show', as: 'show'
end
