require 'pry'

class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all{|appointments| appointments.doctor == appointments.doctor}
  end
  
  def new_appointment(date,patient)
    new_appointment = Appointment.new(date,self,patient)
    appointment = self.new(doctor)
  end
end