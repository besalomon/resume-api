class StudentsController < ApplicationController

  def index
    @students = Student.all     
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio:params[:short_bio], linkedin_url:params[:linkedin_url], twitter_handle: params[:twitter_handle], blog_url: params[:blog_url], resume_url:params[:resume], github_url:params[:github_url], photo: params[:photo])
    render json: @student
  end

  def update
    @student = Student.find_by(id:params[:id])
    @student.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio:params[:short_bio], linkedin_url:params[:linkedin_url], twitter_handle: params[:twitter_handle], blog_url: params[:blog_url], resume_url:params[:resume], github_url:params[:github_url], photo: params[:photo])
    render :show
  end

  def destroy
    @student = Student.find_by(id:params[:id])
    @student.delete
    render :index
  end

end