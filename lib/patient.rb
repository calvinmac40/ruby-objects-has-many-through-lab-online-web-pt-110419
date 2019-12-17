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
    Appointment.all.select{|appointments| appointment.doctor == appointments.doctor }
  end
  end
end