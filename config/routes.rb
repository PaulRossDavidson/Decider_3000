Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'users#index'

    get 'signup' => 'users#new', as: :new_user
    post 'signup' => 'users#create', as: :users


    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    get 'logout' => 'sessions#destroy'

   get 'option' => 'option#index'
   get 'criteria' => 'criteria#index'
   # post 'criteria' => 'criteria#create'
   get 'priority' => 'users#priority'


   resources :criteria do
    resources :text, :only => [:create]
   end

  get 'criteria/:id/sort-up' => 'criteria#sort_up', as: :sort_up_criteria
  get 'criteria/:id/sort-down' => 'criteria#sort_down', as: :sort_down_criteria

  # patch 'criteria/:id/sort-up' => 'criterium#sort_up', as: :sort_up_criterium
  # patch 'criteria/:id/sort-down' => 'criterium#sort_down', as: :sort_down_criterium

end
