Rails.application.routes.draw do
  resources :words do
    collection do
      post :confirm
    end
  end
end
