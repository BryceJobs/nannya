Rails.application.routes.draw do


  get 'job_propositions/index'

  get 'job_propositions/new'

  get 'job_propositions/create'

  get 'job_propositions/show'

  get 'job_propositions/destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
 
  # Requete generale -- formulaire de contact
  
    post 'nous-contacter/envoye', to: "requete_generales#create", as: "requete_generales"
    get 'nous-contacter/confirmation', to: "requete_generales#confirm",as: "general_request_confirmation"
    get 'nous-contacter', to: 'requete_generales#new', as: 'contact'

  # Fin requete generale



  # Requete enregistrement nouveau candidat
    
    get 'candidat/nouvelle_candidature', to: 'requete_candidats#new', as: 'new_candidate_request'
    post 'candidat/nouvelle_candidature/sauvegarde', to: 'requete_candidats#create', as: 'requete_candidats'
    get 'candidat/confirmation_candidature', to:'requete_candidats#confirm', as: "candidate_request_confirmation" 

  # Fin requete enregistrement de nouveaux candidat

  # Job Propositions
    get 'employeur/nouvelle_offre', to: "job_propositions#new", as: 'new_job_proposition'
    post 'employeur/nouvelle_offre/sauvegarder', to: "job_propositions#create", as: 'job_propositions'
    get 'employeur/nouvelle_offre/confirmation', to: "job_propositions#confirm", as: 'job_proposition_confirmation'
  # Fin Job Propostion


  # Pages Statiques
    
    get 'pages/home'

  # Fin Pages statiques
  
  #acceuil
    root 'pages#home'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
