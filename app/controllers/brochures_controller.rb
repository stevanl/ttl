class BrochuresController < ApplicationController
  def new
    @brochure = Brochure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brochure }
    end
  end

  def create
    @brochure = Brochure.new(params[:brochure])

    respond_to do |format|
      if @brochure.save
        format.html { render action: "thanks", notice: 'Your brochure order form has been successfuly submitted. We will be in touch. Thank you.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end
