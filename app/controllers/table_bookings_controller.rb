class TableBookingsController < ApplicationController
  # GET /table_bookings
  # GET /table_bookings.json
  def index
    @table_bookings = TableBooking.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @table_bookings }
    end
  end

  # GET /table_bookings/1
  # GET /table_bookings/1.json
  def show
    @table_booking = TableBooking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @table_booking }
    end
  end

  # GET /table_bookings/new
  # GET /table_bookings/new.json
  def new
    @table_booking = TableBooking.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @table_booking }
    end
  end

  # GET /table_bookings/1/edit
  def edit
    @table_booking = TableBooking.find(params[:id])
  end

  # POST /table_bookings
  # POST /table_bookings.json
  def create
    @table_booking = TableBooking.new(params[:table_booking])

    respond_to do |format|
      if @table_booking.save
        format.html { redirect_to @table_booking, notice: 'Table booking was successfully created.' }
        format.json { render json: @table_booking, status: :created, location: @table_booking }
      else
        format.html { render action: "new" }
        format.json { render json: @table_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /table_bookings/1
  # PUT /table_bookings/1.json
  def update
    @table_booking = TableBooking.find(params[:id])

    respond_to do |format|
      if @table_booking.update_attributes(params[:table_booking])
        format.html { redirect_to @table_booking, notice: 'Table booking was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @table_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_bookings/1
  # DELETE /table_bookings/1.json
  def destroy
    @table_booking = TableBooking.find(params[:id])
    @table_booking.destroy

    respond_to do |format|
      format.html { redirect_to table_bookings_url }
      format.json { head :ok }
    end
  end
end
