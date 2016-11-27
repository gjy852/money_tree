Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "users#index"
  # Routes for the Liability_type resource:
  # CREATE
  get "/liability_types/new", :controller => "liability_types", :action => "new"
  post "/create_liability_type", :controller => "liability_types", :action => "create"

  # READ
  get "/liability_types", :controller => "liability_types", :action => "index"
  get "/liability_types/:id", :controller => "liability_types", :action => "show"

  # UPDATE
  get "/liability_types/:id/edit", :controller => "liability_types", :action => "edit"
  post "/update_liability_type/:id", :controller => "liability_types", :action => "update"

  # DELETE
  get "/delete_liability_type/:id", :controller => "liability_types", :action => "destroy"
  #------------------------------

  # Routes for the Historical_net_worth resource:
  # CREATE
  get "/historical_net_worths/new", :controller => "historical_net_worths", :action => "new"
  post "/create_historical_net_worth", :controller => "historical_net_worths", :action => "create"

  # READ
  get "/historical_net_worths", :controller => "historical_net_worths", :action => "index"
  get "/historical_net_worths/:id", :controller => "historical_net_worths", :action => "show"

  # UPDATE
  get "/historical_net_worths/:id/edit", :controller => "historical_net_worths", :action => "edit"
  post "/update_historical_net_worth/:id", :controller => "historical_net_worths", :action => "update"

  # DELETE
  get "/delete_historical_net_worth/:id", :controller => "historical_net_worths", :action => "destroy"
  #------------------------------

  # Routes for the Asset_type resource:
  # CREATE
  get "/asset_types/new", :controller => "asset_types", :action => "new"
  post "/create_asset_type", :controller => "asset_types", :action => "create"

  # READ
  get "/asset_types", :controller => "asset_types", :action => "index"
  get "/asset_types/:id", :controller => "asset_types", :action => "show"

  # UPDATE
  get "/asset_types/:id/edit", :controller => "asset_types", :action => "edit"
  post "/update_asset_type/:id", :controller => "asset_types", :action => "update"

  # DELETE
  get "/delete_asset_type/:id", :controller => "asset_types", :action => "destroy"
  #------------------------------

  # Routes for the Retirement_assumption resource:
  # CREATE
  get "/retirement_assumptions/new", :controller => "retirement_assumptions", :action => "new"
  post "/create_retirement_assumption", :controller => "retirement_assumptions", :action => "create"

  # READ
  get "/retirement_assumptions", :controller => "retirement_assumptions", :action => "index"
  get "/retirement_assumptions/:id", :controller => "retirement_assumptions", :action => "show"

  # UPDATE
  get "/retirement_assumptions/:id/edit", :controller => "retirement_assumptions", :action => "edit"
  post "/update_retirement_assumption/:id", :controller => "retirement_assumptions", :action => "update"

  # DELETE
  get "/delete_retirement_assumption/:id", :controller => "retirement_assumptions", :action => "destroy"
  #------------------------------

  # Routes for the Retirement_calculation resource:
  # CREATE
  get "/retirement_calculations/new", :controller => "retirement_calculations", :action => "new"
  post "/create_retirement_calculation", :controller => "retirement_calculations", :action => "create"

  # READ
  get "/retirement_calculations", :controller => "retirement_calculations", :action => "index"
  get "/retirement_calculations/:id", :controller => "retirement_calculations", :action => "show"

  # UPDATE
  get "/retirement_calculations/:id/edit", :controller => "retirement_calculations", :action => "edit"
  post "/update_retirement_calculation/:id", :controller => "retirement_calculations", :action => "update"

  # DELETE
  get "/delete_retirement_calculation/:id", :controller => "retirement_calculations", :action => "destroy"
  #------------------------------

  # Routes for the Liability resource:
  # CREATE
  get "/liabilities/new", :controller => "liabilities", :action => "new"
  post "/create_liability", :controller => "liabilities", :action => "create"

  # READ
  get "/liabilities", :controller => "liabilities", :action => "index"
  get "/liabilities/:id", :controller => "liabilities", :action => "show"

  # UPDATE
  get "/liabilities/:id/edit", :controller => "liabilities", :action => "edit"
  post "/update_liability/:id", :controller => "liabilities", :action => "update"

  # DELETE
  get "/delete_liability/:id", :controller => "liabilities", :action => "destroy"
  #------------------------------

  # Routes for the Asset resource:
  # CREATE
  get "/assets/new", :controller => "assets", :action => "new"
  post "/create_asset", :controller => "assets", :action => "create"

  # READ
  get "/assets", :controller => "assets", :action => "index"
  get "/assets/:id", :controller => "assets", :action => "show"

  # UPDATE
  get "/assets/:id/edit", :controller => "assets", :action => "edit"
  post "/update_asset/:id", :controller => "assets", :action => "update"

  # DELETE
  get "/delete_asset/:id", :controller => "assets", :action => "destroy"
  #------------------------------

  # Routes for the Net_worth resource:
  # CREATE
  get "/net_worths/new", :controller => "net_worths", :action => "new"
  post "/create_net_worth", :controller => "net_worths", :action => "create"

  # READ
  get "/net_worths", :controller => "net_worths", :action => "index"
  get "/net_worths/:id", :controller => "net_worths", :action => "show"

  # UPDATE
  get "/net_worths/:id/edit", :controller => "net_worths", :action => "edit"
  post "/update_net_worth/:id", :controller => "net_worths", :action => "update"

  # DELETE
  get "/delete_net_worth/:id", :controller => "net_worths", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
