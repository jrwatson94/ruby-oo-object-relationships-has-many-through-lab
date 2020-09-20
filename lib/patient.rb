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

    def new_appointment (doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        appts = []
        Appointment.all.each { |appt| appts << appt if appt.patient == self } 
        appts
    end

    def doctors 
        self.appointments.map {|appt| appt.doctor}
    end
end
