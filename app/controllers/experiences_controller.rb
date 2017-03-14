class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end
  def show
    @experience = Experience.find_by(id:params[:id])
  end

  def create
    @experience = Experience.create(start_date: params[:start_date], end_date: params[:end_date], job_title: params[:job_title], company_name: params[:company_name], details: params[:details], student_id: params[:student_id])
    render: @student
  end

  def update
    @experience = Experience.find_by(id:params[:id])
    @experience.update(
      start_date: params[:start_date], end_date: params[:end_date], job_title: params[:job_title], company_name: params[:company_name], details: params[:details]
      )
    render: show
  end

  def destroy
    @experience = Experience.find_by(id:params[:id])
    @experience.destroy
    render: index
  end
end
