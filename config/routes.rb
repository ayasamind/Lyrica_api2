Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
  namespace :v1 do
   # namespace :songs do
  ##    get "/" , :action => "index"
  #  end
   # namespace :artists do
    #  get "/" , :action => "index"  
    #end
    # namespace :albums do
    #  get "/" , :action => "index"  
  #  end
#end
        
resources :artists do
         collection do
         get :search
        end
    resources :albums do
        collection do
         get :search
        end
      resources :songs do
           collection do
         get :search
        end
    end
  end
end
  

end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
