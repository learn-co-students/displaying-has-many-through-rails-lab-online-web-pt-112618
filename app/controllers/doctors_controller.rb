class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end

  private
  def date_time
    date = self.appointment_datetime.to_formatted_s(:long_ordinal).split(" ")
    "#{date[0]} #{date[1].gsub(/[a-z]/,'')} #{date[2]} at #{date[3]}"
  end
end
