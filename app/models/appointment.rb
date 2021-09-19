class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def date_time_formatted
    month = self.appointment_datetime.strftime("%^B").downcase.capitalize
    month + self.appointment_datetime.strftime(" %-d, %Y at %H:%M")
  end
end
