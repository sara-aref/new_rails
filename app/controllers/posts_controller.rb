class PostsController < ApplicationController
  def index
    posts = Posts.create({title: "title2", content: "content2"})
    puts "**** #{posts.inspect}"
  end
end