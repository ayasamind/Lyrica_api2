Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
  namespace :v1 do
    namespace :songs do
      get "/" , :action => "index"
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
