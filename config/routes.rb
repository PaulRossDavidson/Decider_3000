Rails.application.routes.draw do


  root 'users#index'

  get 'decisions' => 'decisions#index'
  get 'signup' => 'users#new', as: :new_user
  post 'signup' => 'users#create', as: :users
  get 'priority' => 'users#priority'


  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'options' => 'options#index'
  get 'criteria' => 'criteria#index'
  get 'criterium' => 'criteria#index'
  post 'criteria' => 'criteria#create', as: :user
  delete 'criteria/:id' => 'criteria#destroy'
   # post 'criteria' => 'criteria#create'
  get 'criteria/:id/sort-up' => 'criteria#sort_up', as: :sort_up_criteria
  get 'criteria/:id/sort-down' => 'criteria#sort_down', as: :sort_down_criteria


   # resources :criteria do
   #  resources :text, :only => [:create]
   # end


   #patch 'criteria/:id/sort-up' => 'criteria#sort_up', as: :sort_up_criteria
  # patch 'criteria/:id/sort-down' => 'criterium#sort_down', as: :sort_down_criterium

end
