class PrescriptionsController < ApplicationController

  def index
  @prescriptions = Prescription.all
  end

  def new
    @prescription = Prescription.new
  end

  def create
    @prescription = Prescription.new(prescription_params)
    if @prescription.save
      flash[:notice] = "Prescription was successfully created"
      redirect_to prescription_path(@prescription)
    else
      render 'new' 
    end
  end

  def show
    @prescription = Prescription.find(params[:id])
  end

  def edit
    @prescription = Prescription.find(params[:id])
  end

  def update 
    @prescription = Prescription.find(params[:id])
    if @prescription.update(prescription_params)
      flash[:notice] = "Prescription was successfully edited"
      redirect_to prescription_path(@prescription)
    else
      render 'new' 
    end
  end

  def destroy
    @prescription = Prescription.find(params[:id])
    @prescription.destroy
    flash[:notice] = "Prescription successfully deleted"
    redirect_to prescriptions_path
  end
  
  private
  def prescription_params
    params.require(:prescription).permit(:prescriptionType, :description)
  end
end