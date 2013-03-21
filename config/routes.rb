HumanitywarRails::Application.routes.draw do
  resources :playas


  match 'entries/'   => 'entries#index', :via => :get
  match 'entries/win'   => 'entries#win', :via => :put
  match 'entries/draw'  => 'entries#draw', :via => :put
  match 'entries/?'     => 'entries#index', :via => :get
  match 'entries/winning' => 'entries#winning', :via => :get
  match 'entries/losing' => 'entries#losing', :via => :get
  match 'entries/newest' => 'entries#newest', :via => :get
  match 'entries/:id'   => 'entries#show', :via => :get
  match 'static/:action', :controller => "static"
  match '/entries',  to: 'entries#index'

end
