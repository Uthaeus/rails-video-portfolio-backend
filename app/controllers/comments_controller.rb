class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  respond_to :json

  def index
    @comments = Comment.all
    render json: @comments, include: [:user, :replies]
  end

  def show
    render json: @comment, include: [:user, :replies]
  end

  def create
    @comment = Comment.new(comment_params)
    
    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: 422
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: 422
    end
  end

  def destroy
    @comment.destroy
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content, :user_id, :project_id, :comment_id)
    end
end
