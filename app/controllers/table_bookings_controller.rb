class TableBookingsController < ApplicationController
  def new
    @table_booking = TableBooking.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @table_booking = TableBooking.new(params[:table_booking])

    respond_to do |format|
      if @table_booking.save
        NotificationMailer.table_booking_email(@table_booking).deliver
        format.html { render "thanks" }
      else
        format.html { render action: "new" }
      end
    end
  end
end
