Rails.application.routes.draw do

  resources :jobs

  resources :job_sources

  resources :company_contacts

  resources :companies

  resources :technologies

  resources :technology_categories

  resources :company_sources

  get 'students/update_status'

  resources :cities

  resources :states

  get 'student_assignments/checked'
  resources :student_assignments

  resources :batch_assignments

  get 'chapters/filter_chapters'
  resources :assignments

  resources :chapters

  resources :topics

  resources :activities

  resources :activity_types

  get 'report/by_year'
  get 'report/income'
  get 'report/sources'

  get 'charts/index'

  resources :payments

  resources :messages
  resources :student_batches

  resources :student_notes

  resources :trackers

  resources :batches

  resources :students

  resources :student_sources

  resources :courses

  devise_for :users
  get 'dashboard/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'students#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
