class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:user_check]
  respond_to :json

  def home

    @projects = Project.all
    render json: @projects
  end

  def about
  end

  def contact
  end

  def user_check
    render json: current_user
  end

  def options
  end
end
