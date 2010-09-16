class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.limit(25).group_by(&:day)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])
    @posts = Post.where(["create_at IN (?)", @post.create_at.beginning_of_day..@post.create_at.end_of_day]).group(&:day)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end
end
