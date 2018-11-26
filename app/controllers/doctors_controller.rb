class DoctorsController < ApplicationController
  before_action :login_required, except: [:index, :show, :new, :create]

  def index
    @doctors = Doctor.all
  end

  def show
    find_doctor_from_params
  end

  def new
    if logged_in?
      doctor = Doctor.find_by_id(session[:doctor_id])
      patient = Patient.find_by_id(session[:patient_id])
      if doctor
        redirect_to doctor_path(doctor)
      elsif patient
        redirect_to patient_path(patient)
      end
    end
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if Doctor.find_by(:email => params[:doctor][:email]) || Patient.find_by(:email => params[:doctor][:email])
      flash[:notice] = "An account with this email already exists."
      render :new
      else
        if @doctor.save
          session[:doctor_id] = @doctor.id
          flash[:notice] = "You have successfully signed up."
          redirect_to @doctor
        else
          flash[:notice] = "Signup failed"
          render :new
        end
      end
  end

  def edit
    find_doctor_from_params
  end

  def update
    find_doctor_from_params
    if @doctor.update(doctor_params)
      flash[:notice] = "Doctor was successfully updated."
      redirect_to :root
    else
      flash[:notice] = "Doctor update failed."
      render :new
    end
  end

  def destroy
    find_doctor_from_params
    @doctor.destroy
    redirect_to :root
  end

  private
  def doctor_params
    params.require(:doctor).permit(:name, :gender, :specialty, :practice_name, :practice_location, :phone, :email, :password)
  end

  def find_doctor_from_params
    @doctor = Doctor.find(params[:id])
  end

end
