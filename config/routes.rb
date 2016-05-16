Rails.application.routes.draw do

  resources :neighborhoods
  root 'neighborhoods#index'

end

#            Prefix Verb   URI Pattern                       Controller#Action
#     neighborhoods GET    /neighborhoods(.:format)          neighborhoods#index
#                   POST   /neighborhoods(.:format)          neighborhoods#create
#  new_neighborhood GET    /neighborhoods/new(.:format)      neighborhoods#new
# edit_neighborhood GET    /neighborhoods/:id/edit(.:format) neighborhoods#edit
#      neighborhood GET    /neighborhoods/:id(.:format)      neighborhoods#show
#                   PATCH  /neighborhoods/:id(.:format)      neighborhoods#update
#                   PUT    /neighborhoods/:id(.:format)      neighborhoods#update
#                   DELETE /neighborhoods/:id(.:format)      neighborhoods#destroy
#              root GET    /                                 neighborhoods#index
