class LandmarksController < ApplicationController
  get '/landmarks' do
    "Here should be all the landmarks"
  end
  
  get '/landmarks/new' do
    "Here should be a form to create new landmarks"
  end
  
  post '/landmarks' do
    "Here we save the new landmark and redirect to that landmark's page"
  end
  
  get '/landmarks/:id' do
    "Here is an individual landmark"
  end
  
  get '/landmarks/:id/edit' do
    "Here you can edit an individual landmark"
  end
  
  patch '/landmarks' do
    "Here we save the updated landmark and redirect to that landmark's page"
  end
end
