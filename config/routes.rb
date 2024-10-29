Rails.application.routes.draw do
  get("/", { :controller => "main", :action => "root"})
  get("/dice/:dice/:sides", { :controller => "main", :action => "roll"})
end
