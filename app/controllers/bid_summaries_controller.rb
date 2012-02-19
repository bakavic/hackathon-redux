class BidSummariesController < ApplicationController
  # GET /bid_summaries
  # GET /bid_summaries.xml
  def index
    @bid_summaries = BidSummary.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bid_summaries }
    end
  end

  # GET /bid_summaries/1
  # GET /bid_summaries/1.xml
  def show
    @bid_summary = BidSummary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bid_summary }
    end
  end

  # GET /bid_summaries/new
  # GET /bid_summaries/new.xml
  def new
    @bid_summary = BidSummary.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bid_summary }
    end
  end

  # GET /bid_summaries/1/edit
  def edit
    @bid_summary = BidSummary.find(params[:id])
  end

  # POST /bid_summaries
  # POST /bid_summaries.xml
  def create
    @bid_summary = BidSummary.new(params[:bid_summary])

    respond_to do |format|
      if @bid_summary.save
        format.html { redirect_to(@bid_summary, :notice => 'Bid summary was successfully created.') }
        format.xml  { render :xml => @bid_summary, :status => :created, :location => @bid_summary }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bid_summary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bid_summaries/1
  # PUT /bid_summaries/1.xml
  def update
    @bid_summary = BidSummary.find(params[:id])

    respond_to do |format|
      if @bid_summary.update_attributes(params[:bid_summary])
        format.html { redirect_to(@bid_summary, :notice => 'Bid summary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bid_summary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bid_summaries/1
  # DELETE /bid_summaries/1.xml
  def destroy
    @bid_summary = BidSummary.find(params[:id])
    @bid_summary.destroy

    respond_to do |format|
      format.html { redirect_to(bid_summaries_url) }
      format.xml  { head :ok }
    end
  end
end
