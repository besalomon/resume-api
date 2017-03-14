class Api::V2::CapstonesController < ApplicationController
  def index 
    @capstones = Capstone.all     
    render "index.json.jbuilder"
  end

  def show
    @capstone = Capstone.find_by(id:params[:id])
  end

  def create 
   name = params[:name],
   description = params[:description],
   url = params[:url],
   screenshot = params[:screenshot]
   capstone = Capstone.create({name: name, description: description, url: url, screenshot: screenshot, student_id: student_id})

   render :show
  end

  def update 
   @capstone = Capstone.find_by(id: params[:id])
   @capstone.update(
     name: params[:name],
     description: params[:description],
     url: params[:url],
     screenshot: [:screenshot]
     )
   render jason: @capstone 

  end

  def destroy
   @capstone = Capstone.find_by(id:params[:id])
   @capstone.destroy

   render json: {message: "Team Removed!!!!!"}
  end
end
