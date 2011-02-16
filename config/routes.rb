ActionController::Routing::Routes.draw do |map|
  map.resources :messages

  map.namespace(:admin, :path_prefix => (defined?(REFINERY_GEM_VERSION) ? 'admin' : 'refinery')) do |admin|
    admin.resources :messages
  end
end
