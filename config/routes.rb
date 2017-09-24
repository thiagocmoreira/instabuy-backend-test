Rails.application.routes.draw do
  # PUT using the body
  put '/person' => 'person#update_by_body'
  put '/address' => 'adress#update_by_body'
  # DELETE using the body
  delete '/person' => 'person#destroy_by_body'
  delete '/address' => 'adress#destroy_by_body'
  # Use routes mapped on the CORS, of application.rb (get, put, delete, post)
  resources :person, :defaults => { :format => :json } do
    # PUT using the query
    get '/address' => 'adress#show_by_body'
  end
  # Address routes
  get '/address' => 'adress#index', :defaults => { :format => :json }
  get '/address/:id' => 'adress#show', :defaults => { :format => :json }
  post '/address/' => 'adress#create', :defaults => { :format => :json }
  delete '/address/:id' => 'adress#destroy', :defaults => { :format => :json }
end
