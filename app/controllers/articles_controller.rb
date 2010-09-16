class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.xml
  def index

  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new(:post_data => { 
                              :title => nil,
                              :excerpt => nil, 
                              :content => nil
                           })

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(:post_data => { 
                              :title => params[:article][:title],
                              :excerpt => params[:article][:excerpt], 
                              :content => params[:article][:content]
                           })

    respond_to do |format|
      if @article.save
        format.html { redirect_to(posts_path, :notice => 'Article was successfully created.') }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to(@article, :notice => 'Article was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

end
