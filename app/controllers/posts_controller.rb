class PostsController < ApplicationController

  def index
    @posts = Post.limit(25).group_by(&:day)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.where(["id != :id AND created_at BETWEEN :beginning AND :end", {
                    :beginning => @post.created_at.beginning_of_day,
                    :end => @post.created_at.end_of_day,
                    :id => @post
                    }]).group_by(&:day)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end
end
