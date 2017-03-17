class SkillsController < ApplicationController
  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to skills_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def index
    @skills = Skill.all
  end

  private 
    def skill_params
      params.require(:skill).permit(:language)
  end
  
end
