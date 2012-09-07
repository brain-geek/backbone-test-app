BackboneRailsApp::Application.routes.draw do
  resources :countries

  resources :brands

  root :to => redirect('/brands')
end
