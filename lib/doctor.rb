require_relative "./appointment.rb"
require 'pry'
class Doctor
attr_accessor :name, :date, :patient

    @@all=[]
  
    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end
     
    def new_appointment (patient, date)
        Appointment.new(date, patient, self)
        #binding.pry
    end

    def appointments
        
        Appointment.all.select do |appointment|
            appointment.doctor==self
        end
    end

  
    def patients
        binding.pry
        Appointment.all.map do |pat|
            pat.patient
        end
    end
end