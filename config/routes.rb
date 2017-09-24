Rails.application.routes.draw do
  # Use routes mapped on the CORS, of application.rb (get, put, delete, post)
  resources :person, :defaults => { :format => :json }
  resources :adress, :defaults => { :format => :json }
end
