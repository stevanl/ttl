class BrochuresController < ApplicationController
  def new
    @brochure = Brochure.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @brochure = Brochure.new(params[:brochure])

    respond_to do |format|
      if @brochure.save
        NotificationMailer.brochure_email(@brochure).deliver
        format.html { render action: "thanks" }
      else
        format.html { render action: "new" }
      end
    end
  end
end
