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
  
  def new_appointment(doctor, date, appointment)
    Appointment.new(doctor, date, appointment)
  end 
  
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end 
  
end 
  