class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end
  
  get '/landmarks/new' do
    erb :'landmarks/new'
  end
  
  get '/landmarks/:id' do
    @landmark = Landmark.find(params["id"])
    erb :'landmark/show'
  end
  
  post '/landmarks' do
    @landmark = Landmark.create(params["landmark"])
    redirect "/landmarks/#{@landmark.id}"
  end
  
  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params["id"])
    erb :'landmarks/edit'
  end
  
  patch '/landmarks' do
    "Here we save the updated landmark and redirect to that landmark's page"
  end
end
