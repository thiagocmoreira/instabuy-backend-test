Rails.application.routes.draw do
  # PUT using the body
  put '/person' => 'person#update_by_body'
  put '/adress' => 'adress#update_by_body'
  # DELETE using the body
  delete '/person' => 'person#destroy_by_body'
  delete '/adress' => 'adress#destroy_by_body'
  # Use routes mapped on the CORS, of application.rb (get, put, delete, post)
  resources :person, :defaults => { :format => :json }
  resources :adress, :defaults => { :format => :json }
end
