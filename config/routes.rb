Rails.application.routes.draw do
  # get word'words/index'
  # get '/words', to: 'words#index'
  resources :words do
    collection do
      post :confirm
    end
  end
end
