class RsvpController < ApplicationController
  def new
    @rsvp = Rsvp.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @rsvp = Rsvp.new(params[:rsvp])

    respond_to do |format|
      if @rsvp.save
        NotificationMailer.rsvp_email(@rsvp).deliver
        format.html { render "thanks" }
      else
        format.html { render action: "new" }
      end
    end
  end
end
