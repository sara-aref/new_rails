class PostsController < ApplicationController
  def index
    @posts = Posts.all
  end

  def new
    @post = Posts.new
  end

  def create
    @post = Posts.new({title: params[:post][:title], content: params[:post][:content]})

    if @post.save
      redirect_to posts_url(@post)
    else
      render :new, status: 422
    end
  end

  def show
    @post = Posts.find(params[:id])
  end

  def edit
    @post = Posts.find(params[:id])
  end

  def update
    @post = Posts.find(params[:id])

    if @post.update({title: params[:post][:title], content: params[:post][:content]})
      redirect_to post_url(@post)
    else
      render :new, status: 422
  end

  def delete
    @post = Posts.find(params[:id])

    @post.destroy

    redirect_to posts_url
  end
end