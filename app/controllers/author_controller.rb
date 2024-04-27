class AuthorController < ApplicationController
    def index
      @author = Author.all
    end
  
    def new
      @author = Author.new
    end
  
    def create
      @author = Author.new({name: params[:post][:name], DOB: params[:post][:DOB], email: params[:post][:email], phone_number: params[:post][:phone_number]})
  
      if @author.save
        redirect_to posts_url(@author)
      else
        render :new, status: 422
      end
    end
  
    def show
      @author = Author.find(params[:id])
    end
  
    def edit
      @author = Author.find(params[:id])
    end
  
    def update
      @author = Author.find(params[:id])
  
      if @author.update({name: params[:post][:name], DOB: params[:post][:DOB], email: params[:post][:email], phone_number: params[:post][:phone_number]})
        redirect_to post_url(@author)
      else
        render :new, status: 422
    end
  
    def delete
      @author = Author.find(params[:id])
  
      @author.destroy
  
      redirect_to posts_url
    end
  end