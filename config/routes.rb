Rails.application.routes.draw do
  root 'buildings#index'

  #buildings
  get '/apartments/:apartment_id/buildings(.:format)', to:  'buildings#index',as: 'apartament_buildings'
  get '/apartments/:apartment_id/buildings/new(.:format)', to:  'buildings#new', as:  'new_apartment_building'
  get '/apartments/:apartment_id/buildings/:id/edit(.:format)', to: 'buildings#edit', as:  'edit_apartment_building'
  get '/apartments/:apartment_id/buildings/:id(.:format)',  to: 'buildings#show', as:   'apartment_building'


  #apartaments
  get '/apartments(.:format)', to:  'apartments#index', as: 'apartments'
  get '/apartments/new(.:format)', to:  'apartments#new', as: 'new_apartment'
  get '/apartments/:id/edit(.:format)', to: 'apartments#edit',  as: 'edit_apartment'
  get '/apartments/:id(.:format)', to:  'apartments#show',  as: 'apartment'
  
  resources :apartments 
  resources :buildings
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
