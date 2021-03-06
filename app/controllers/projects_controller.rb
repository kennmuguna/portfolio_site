class ProjectsController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new(project_params)
    if @project.save
      redirect_to skill_path(@project.skill)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.edit(project_params)
  end

  def show
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.show
  end

  private 
  def project_params
    params.require(:project).permit(:name, :description)
  end
  
end
