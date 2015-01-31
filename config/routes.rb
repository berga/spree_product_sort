#Spree::Core::Engine.routes.prepend do
Spree::Core::Engine.add_routes do
  namespace :admin do
		# callback for jQuery sort action
    match 'taxons/reorder_products/:id' => 'taxons#reorder_products', via: [:put], as: 'reorder_product'
    match 'product_taxons/positions' => 'product_taxons#positions', as: :product_sort, via: [:get]
    resources :product_taxons do
      collection do
        get :positions
      end
    end
  end
end
