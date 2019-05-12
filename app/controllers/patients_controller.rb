class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  private

  def date_time
    date = self.appointment_datetime.to_formatted_s(:long_ordinal).split(" ")
    "#{date[0]} #{date[1].gsub(/[a-z]/, '')} #{date[2]} at #{date[3]}"
  end
end
