class RfqLinesController < ApplicationController
  # GET /rfq_lines
  # GET /rfq_lines.json
  def index
    @rfq_lines = RfqLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rfq_lines }
    end
  end

  # GET /rfq_lines/1
  # GET /rfq_lines/1.json
  def show
    @rfq_line = RfqLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rfq_line }
    end
  end

  # GET /rfq_lines/new
  # GET /rfq_lines/new.json
  def new
    @rfq_line = RfqLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rfq_line }
    end
  end

  # GET /rfq_lines/1/edit
  def edit
    @rfq_line = RfqLine.find(params[:id])
  end

  # POST /rfq_lines
  # POST /rfq_lines.json
  def create
    @rfq_line = RfqLine.new(params[:rfq_line])

    respond_to do |format|
      if @rfq_line.save
        format.html { redirect_to @rfq_line, notice: 'Rfq line was successfully created.' }
        format.json { render json: @rfq_line, status: :created, location: @rfq_line }
      else
        format.html { render action: "new" }
        format.json { render json: @rfq_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rfq_lines/1
  # PUT /rfq_lines/1.json
  def update
    @rfq_line = RfqLine.find(params[:id])

    respond_to do |format|
      if @rfq_line.update_attributes(params[:rfq_line])
        format.html { redirect_to @rfq_line, notice: 'Rfq line was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rfq_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfq_lines/1
  # DELETE /rfq_lines/1.json
  def destroy
    @rfq_line = RfqLine.find(params[:id])
    @rfq_line.destroy

    respond_to do |format|
      format.html { redirect_to rfq_lines_url }
      format.json { head :ok }
    end
  end
end
