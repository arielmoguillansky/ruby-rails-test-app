class PrescriptionsController < ApplicationController

  before_action :set_prescription, only: [:edit, :update, :show, :destroy]

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
  end

  def edit
  end

  def update 
    if @prescription.update(prescription_params)
      flash[:notice] = "Prescription was successfully edited"
      redirect_to prescription_path(@prescription)
    else
      render 'new' 
    end
  end

  def destroy
    @prescription.destroy
    flash[:notice] = "Prescription successfully deleted"
    redirect_to prescriptions_path
  end
  
  private
  def set_prescription
    @prescription = Prescription.find(params[:id])
  end

  def prescription_params
    params.require(:prescription).permit(:prescriptionType, :description)
  end
end