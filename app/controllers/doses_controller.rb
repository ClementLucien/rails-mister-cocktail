class DosesController < ApplicationController
  def index
    @dose = Dose.all.order(:description)
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Doses.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end
end
