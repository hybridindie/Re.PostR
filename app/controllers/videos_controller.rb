class VideosController < ApplicationController

  def index;end

  def show
    @video = Video.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @video }
    end
  end

  def new
    @video = Video.new(:post_data => { 
                              :title => nil,
                              :embed_code => nil,
                              :caption => nil
                           })

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @video }
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    @video = Video.new(:post_data => { 
                              :title => params[:video][:title],
                              :embed_code => params[:video][:embed_code],
                              :caption => params[:video][:caption]
                           })

    respond_to do |format|
      if @video.save
        format.html { redirect_to(@video, :notice => 'Video was successfully created.') }
        format.xml  { render :xml => @video, :status => :created, :location => @video }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @video = Video.find(params[:id])

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to(@video, :notice => 'Video was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @video.errors, :status => :unprocessable_entity }
      end
    end
  end

end
