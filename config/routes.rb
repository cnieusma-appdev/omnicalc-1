Rails.application.routes.draw do
  get("/home", { :controller => "application", :action => "blank_square_form" })

  get("/square/new", { :controller => "application", :action => "blank_square_form"})

  get("/square/results", { :controller => "application", :action => "calculate_square"})

  get("/square_root/new", { :controller => "application", :action => "blank_sqrt_form"})
  
  get("/random/results",{ :controller => "application", :action => "calculate_random"})
end
