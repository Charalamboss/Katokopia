Rails.application.routes.draw do
  

 # get 'about/index'
  get 'welcome/index'
  root 'welcome#index'
  get 'about/index'
  resources :articles do 
   resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
