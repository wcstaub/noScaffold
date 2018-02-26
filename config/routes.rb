Rails.application.routes.draw do
  root 'welcome#index'
  
  # Since User and Product were created differently in index.html. the get & post 
  # are slightly different
	get 'users' => 'welcome#users'
	post 'create_users' => 'welcome#create_users'

  get 'products' => 'welcome#products'
  post 'products' => 'welcome#create_products'
 
  get 'welcome/products'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
