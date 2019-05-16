class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def display_datetime
        self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
    end
end
