class SkillsController < ApplicationController
  
  def index
    @skills = Skill.all 

    render json: @skills   
  end

  def show
    @skill = Skill.find_by(id: params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    name: params[:name]
    student_id: params[:student_id]
    
    @skill = Skill.create(name: name, student_id: student_id)

    render json: @skill
  end

  def edit
    @skill = Skill.find_by(id: params[:id])
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.update(
      name: params[:name]
      )

    render :show
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy

    redirect_to "/skills"
  end
end
