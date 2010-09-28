class QuotesController < ApplicationController

  def index;end

  def show
    @quote = Quote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quote }
    end
  end

  def new
    @quote = Quote.new(:post_data => { 
                              :source => nil,
                              :body => nil
                           })

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quote }
    end
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def create
    @quote = Quote.new(:post_data => { 
                              :source => params[:quote][:source],
                              :body => params[:quote][:body]
                           })

    respond_to do |format|
      if @quote.save
        format.html { redirect_to(root_url, :notice => 'Quote was successfully created.') }
        format.xml  { render :xml => @quote, :status => :created, :location => @quote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @quote = Quote.find(params[:id])

    respond_to do |format|
      if @quote.update_attributes(params[:quote])
        format.html { redirect_to(root_url, :notice => 'Quote was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quote.errors, :status => :unprocessable_entity }
      end
    end
  end

end
