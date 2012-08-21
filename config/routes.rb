Pdh::Application.routes.draw do

 # get "secureds/index"

  match 'installment-loans' => 'lenders#installment'
  match 'quick-fast-loans' => redirect("http://resources.thepaydayhound.com/quick-fast-loans/")  
  match 'payday-direct' => redirect("http://resources.thepaydayhound.com/payday-direct/")
  match 'why-use-the-payday-hound' => 'infos#why'  
  match 'ez-payday' => redirect("http://resources.thepaydayhound.com/ez-payday/")
  match 'payday-loans' => 'lenders#index'
  match 'no-faxing-payday' => redirect("http://resources.thepaydayhound.com/no-faxing-payday/")
  match 'payday-loan-or-installment-loan' => redirect("http://http://resources.thepaydayhound.com/payday-loan-or-installment-loan/")
  match 'resources' => redirect("http://resources.thepaydayhound.com/resources/")
  match 'the-payday-hound-official-launch' => redirect("http://resources.thepaydayhound.com/the-payday-hound-official-launch/")
  match 'how-payday-loans-work' => redirect("http://resources.thepaydayhound.com/how-payday-loans-work/")
  match 'privacy-policy' => redirect("http://resources.thepaydayhound.com/privacy-policy/")
  match 'choosing-a-payday-loan' => redirect("http://http://resources.thepaydayhound.com/choosing-a-payday-loan/")
  match 'wells-fargo-direct-advance-fridays' => redirect("http://resources.thepaydayhound.com/wells-fargo-direct-advance-fridays/")
  match 'about-the-payday-hound' => redirect("http://www.thepaydayhound.com/infos/about/")
  match 'press' => redirect("http://www.thepaydayhound.com/infos/press/")
  match 'about-the-payday-hound' => redirect("http://www.thepaydayhound.com/infos/about/")
  match '/payday-loans/:name' => redirect("http://resources.thepaydayhound.com/%{name}")
  match '/installment-loans/:name' => redirect("http://resources.thepaydayhound.com/%{name}")  
  match '/tag/:name' => redirect("http://resources.thepaydayhound.com/tag/%{name}") 
  match '/matching-services/:name' => redirect("http://www.thepaydayhound.com/payday-loans")  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
 resources :secureds, :path => '/secured-cards'
 resources :homes, :path => ''
 resources :lenders, :path => '/payday-loans'
 
  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
  root :to => "homes#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
