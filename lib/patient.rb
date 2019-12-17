# class Patient
  
#   attr_accessor :name 
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
  
#   def self.all
#     @@all 
#   end
  
  
#   def appointments
#     Appointment.all.select{|appointments| appointment.doctor == appointments.doctor }
#   end
#   end
# end

class Patient
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor,date)
    patient = Appointment.new(doctor,self,date)
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
  
  # def doctors
  #   appointments.map(&:doctors) The code that didn't work that was given to me from a tech!
  # end
end