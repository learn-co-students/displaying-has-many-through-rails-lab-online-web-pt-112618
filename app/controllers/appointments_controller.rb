class AppointmentsController < ApplicationController
  def show
    @appt = Appointment.find(params[:id])
  end

  private
  def date_time
    date = self.appointment_datetime.to_formatted_s(:long_ordinal).split(" ")
    "#{date[0]} #{date[1]} #{date[2]} at #{date[3]}"
  end
end
