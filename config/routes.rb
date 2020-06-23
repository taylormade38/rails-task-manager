Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # verb + path, to: "controller_name#action"

  # List all tasks
  get 'tasks', to: 'tasks#index'

  # Add a task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks/', to: 'tasks#create'

  # View a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
