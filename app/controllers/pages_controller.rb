class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:user_check]
  respond_to :json

  def home
    @page_title = "Home"
    # q: how to only include published projects in descending order?
    # a: use the published? scope method from the Project model
    # q:

    @projects = Project.all.published?.order(created_at: :desc)
    render json: { title: @page_title, projects: @projects}
  end

  def about
    @page_title = "About"
    render json: @page_title
  end

  def contact
    @page_title = "Contact"
    render json: @page_title
  end

  def user_check
    render json: current_user
  end

  def options
    @page_title = "Options"
    render json: @page_title
  end
end
