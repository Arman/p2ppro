class RfqsController < ApplicationController
  # GET /rfqs
  # GET /rfqs.json
  def index
    @rfqs = Rfq.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rfqs }
    end
  end

  # GET /rfqs/1
  # GET /rfqs/1.json
  def show
    @rfq = Rfq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rfq }
    end
  end

  # GET /rfqs/new
  # GET /rfqs/new.json
  def new
    @rfq = Rfq.new
    3.times { @rfq.rfq_lines.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rfq }
    end
  end

  # GET /rfqs/1/edit
  def edit
    @rfq = Rfq.find(params[:id])
  end

  # POST /rfqs
  # POST /rfqs.json
  def create
    @rfq = Rfq.new(params[:rfq])
    @rfq.creator_id = current_user.id

    respond_to do |format|
      if @rfq.save
        format.html { redirect_to @rfq, notice: 'Rfq was successfully created.' }
        format.json { render json: @rfq, status: :created, location: @rfq }
      else
        format.html { render action: "new" }
        format.json { render json: @rfq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rfqs/1
  # PUT /rfqs/1.json
  def update
    @rfq = Rfq.find(params[:id])

    respond_to do |format|
      if @rfq.update_attributes(params[:rfq])
        format.html { redirect_to @rfq, notice: 'Rfq was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rfq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfqs/1
  # DELETE /rfqs/1.json
  def destroy
    @rfq = Rfq.find(params[:id])
    @rfq.destroy

    respond_to do |format|
      format.html { redirect_to rfqs_url }
      format.json { head :ok }
    end
  end
end
