require 'pry'

class Patient
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor,date)
    patient = Appointment.new(doctor,self,date)
    binding.pry
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self} 
  end
  
  def doctors
    Doctor.all.each do |doctors|
      doctors.appointments
    end
  end
end