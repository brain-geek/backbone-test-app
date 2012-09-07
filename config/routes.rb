BackboneRailsApp::Application.routes.draw do
  resources :countries
  resources :campaigns
  resources :brands

  root :to => redirect('/brands')
end
