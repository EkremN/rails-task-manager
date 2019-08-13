Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Read
  get 'tasks', to: 'tasks#index'

  #Create
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  #Read One
  get 'tasks/:id', to: 'tasks#show', as: :task

  #Update
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  #Delite
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
