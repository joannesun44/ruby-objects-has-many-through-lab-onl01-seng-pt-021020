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
    Patient.all.select {|patient| patient.appointment == self}
  end 
  
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end 
  
end 
  