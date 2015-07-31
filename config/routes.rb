Rails.application.routes.draw do


  get 'priorities/index'

  root 'users#index'

  get 'decisions' => 'decisions#index'
  post 'decisions' => 'decisions#create', as: :decision
  get 'decisions/:id/sort-up' => 'decisions#sort_up', as: :sort_up_decisions
  get 'decisions/:id/sort-down' => 'decisions#sort_down', as: :sort_down_decisions

  get 'signup' => 'users#new', as: :new_user
  post 'signup' => 'users#create', as: :users
  get 'priorities' => 'priorities#index', as: :priorities
  get 'prioritiy' => 'priorities#index', as: :priority
  post 'priorities' => 'priorities#create'



  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'options' => 'options#index'
  post 'options' => 'options#create', as: :option
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
