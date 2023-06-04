Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :apartments 
resources :tenants, only: [:create, :destroy, :show] 
resources :leases, only: [:create, :destroy]

end
