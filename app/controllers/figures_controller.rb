class FiguresController < ApplicationController
  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end
  
  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'figures/new'
  end
  
  post '/figures' do
    "Here we save the new figure and redirect to that figure's page"
  end
  
  get '/figures/:id' do
    "Here is an individual figure"
  end
  
  get '/figures/:id/edit' do
    "Here you can edit an individual figure"
  end
  
  patch '/figures' do
    "Here we save the updated figure and redirect to that figure's page"
  end
end
