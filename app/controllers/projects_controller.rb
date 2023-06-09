class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]

  respond_to :json

  def index
    @projects = Project.all
    render json: @projects, include: :comments
  end
  

  def show
    render json: @project, include: {comments: {include: [:replies, :user]}}
  end

  def create
    @project = Project.new(project_params)
    
    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :subtitle, :body, :image, :video_url, :user_id, :status)
    end
end
