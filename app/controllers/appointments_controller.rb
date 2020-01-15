class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]

  def show
  end

  private

  def set_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime)
  end

end
