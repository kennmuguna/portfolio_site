class ProjectsController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new
  end

  def edit
  end

  def show
  end

  private 
  def project_params
    params.require(:project).permit(:name, :description)
  end
  
end
