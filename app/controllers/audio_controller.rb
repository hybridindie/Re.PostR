class AudioController < ApplicationController

  def index;end

  def show
    @audio = Audio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @audio }
    end
  end

  def new
    @audio = Audio.new(:post_data => { 
                              :title => nil,
                              :description => nil
                           })

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @audio }
    end
  end

  def edit
    @audio = Audio.find(:post_data => { 
                              :title => params[:audio][:title],
                              :description => params[:audio][:content]
                           })
  end

  def create
    @audio = Audio.new(params[:audio])

    respond_to do |format|
      if @audio.save
        format.html { redirect_to(@audio, :notice => 'Audio was successfully created.') }
        format.xml  { render :xml => @audio, :status => :created, :location => @audio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @audio.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @audio = Audio.find(params[:id])

    respond_to do |format|
      if @audio.update_attributes(params[:audio])
        format.html { redirect_to(@audio, :notice => 'Audio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @audio.errors, :status => :unprocessable_entity }
      end
    end
  end

end
