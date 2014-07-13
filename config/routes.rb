FrugalEater::Application.routes.draw do
  devise_for :users

  resources :dashboard

  resources :menuitems

  resources :favorites do
    get 'search', on: :collection
  end


  root to: "home#index"

# #   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#          dashboard_index GET    /dashboard(.:format)           dashboard#index
#                          POST   /dashboard(.:format)           dashboard#create
#            new_dashboard GET    /dashboard/new(.:format)       dashboard#new
#           edit_dashboard GET    /dashboard/:id/edit(.:format)  dashboard#edit
#                dashboard GET    /dashboard/:id(.:format)       dashboard#show
#                          PATCH  /dashboard/:id(.:format)       dashboard#update
#                          PUT    /dashboard/:id(.:format)       dashboard#update
#                          DELETE /dashboard/:id(.:format)       dashboard#destroy
#                menuitems GET    /menuitems(.:format)           menuitems#index
#                          POST   /menuitems(.:format)           menuitems#create
#             new_menuitem GET    /menuitems/new(.:format)       menuitems#new
#            edit_menuitem GET    /menuitems/:id/edit(.:format)  menuitems#edit
#                 menuitem GET    /menuitems/:id(.:format)       menuitems#show
#                          PATCH  /menuitems/:id(.:format)       menuitems#update
#                          PUT    /menuitems/:id(.:format)       menuitems#update
#                          DELETE /menuitems/:id(.:format)       menuitems#destroy
#                favorites GET    /favorites(.:format)           favorites#index
#                          POST   /favorites(.:format)           favorites#create
#             new_favorite GET    /favorites/new(.:format)       favorites#new
#            edit_favorite GET    /favorites/:id/edit(.:format)  favorites#edit
#                 favorite GET    /favorites/:id(.:format)       favorites#show
#                          PATCH  /favorites/:id(.:format)       favorites#update
#                          PUT    /favorites/:id(.:format)       favorites#update
#                          DELETE /favorites/:id(.:format)       favorites#destroy
#                     root GET    /                              home#index
#                     

  
end
