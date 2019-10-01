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
    @figure = Figure.create(params["figure"])
    if !params["title"].empty?
      title = Title.create(params["title"])
      @figure.titles << title
    end
    if !params["landmark"].empty?
      landmark = Landmark.create(params["landmark"])
      @figure.landmarks << landmark
    end
    
    @figure.save
    redirect "/figures/#{@figure.id}"
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
