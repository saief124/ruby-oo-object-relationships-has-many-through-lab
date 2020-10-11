require_relative "./appointment.rb"
require 'pry'
class Patient
    attr_accessor :patient, :date
    attr_reader :doctor
    @@all=[]
    
    def initialize (patient)
        @patient = patient
        @@all << self
    end
    
    def self.all
        @@all
    end

#The Patient class needs an instance method, #new_appointment, 
#that takes in an argument of a doctor and a date and creates a 
#new Appointment. The Appointment should know that it belongs to the patient.
    def new_appointment (doctor, date)
        Appointment.new(date, self, doctor)
    end
#The Patient class needs an instance method, #appointments,
    def appointments
        Appointment.all.select do |appointments|
            appointments.patient==self
        end
    end
#The Patient class needs an instance method, #doctors, 
    def doctors
        self.appointments.collect{|doc| doc.doctor}
#that iterates over that patient's Appointments and collects 
#the doctor that belongs to each Appointment.
    end
end