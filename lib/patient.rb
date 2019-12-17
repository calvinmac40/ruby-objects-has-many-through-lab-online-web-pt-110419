class Patient
  
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
    Appointment.all.select{|appointments| appointments.doctor == appointments.doctor }
  end
  
  def doctors
    Doctor.all.each do |doctors|
      doctors.appointments
    end
  end
end