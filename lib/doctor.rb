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
        appts = []
        Appointment.all.each do |appt|
            if appt.doctor == self
                appts << appt
            end
        end
        appts
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def patients
        self.appointments.map {|appt| appt.patient}
    end




end
