Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'employees#index'
  get 'employees/show'
  get 'employees/:id/edit', to: 'employees#edit', as: :employees_edit
  put 'employees/:id', to: 'employees#update', as: :employees_update
  get 'timesheets/new'
  post 'timesheets/create'
  patch 'timesheets/update'
  get 'timesheets/index'
  get 'timesheets/show'
  get 'timesheets/edit'
end
