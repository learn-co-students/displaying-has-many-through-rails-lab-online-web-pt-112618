require 'pry'
class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def date_time
    #binding.pry
    date = self.appointment_datetime.to_formatted_s(:long_ordinal).split(" ")
    "#{date[0]} #{date[1].gsub(/[a-z]/, '')} #{date[2]} at #{date[3]}"
  end
end
