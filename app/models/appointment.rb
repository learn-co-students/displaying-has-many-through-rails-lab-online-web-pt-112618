class Appointment < ApplicationRecord
  belongs_to :patient 
  belongs_to :doctor  

  def display_datetime 
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end 
end
