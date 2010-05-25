ActionController::Routing::Routes.draw do |map|
  map.resources :messages

  map.namespace(:admin) do |admin|
    admin.resources :messages
  end
end
