class NominationsController < ApplicationController
  def new
    @nomination = Nomination.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @nomination = Nomination.new(params[:nomination])

    respond_to do |format|
      if @nomination.save
        NotificationMailer.nomination_email(@nomination).deliver
        NotificationMailer.nominee_email(@nomination).deliver
        format.html { render "thanks" }
      else
        format.html { render action: "new" }
      end
    end
  end
end
