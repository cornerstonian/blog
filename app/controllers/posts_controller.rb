class PostsController < ApplicationController
  def index
    @posts = Post.all
  end


  def show
    @post = Post.find_by id: params[:id]
  end


  def new
    @post = Post.new
  end


  def create
    @post = Post.new
    @post.name = params[:post][:mame]
    @post.body = params[:post][:body]
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end


  def edit

  end


  def delete

  end


 end
