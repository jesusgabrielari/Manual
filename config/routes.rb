Rails.application.routes.draw do
  get 'groups', to: 'groups#index'
  root 'groups#index'

  get 'groups/new'
  post 'groups', to: 'groups#create'
  
  get 'groups/:id', to: 'groups#show', as: 'group'

  get 'groups/:id/edit', to: 'groups#edit', as: 'group_edit'
  patch 'groups/:id', to: 'groups#update'
  
  delete 'groups/:id', to: 'groups#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
