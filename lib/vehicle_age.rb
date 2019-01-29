class Vehicle
    def initialize(year)
        @manufactured_year=year
    end

    private

    def calculate_vehicle_age
        Time.now.year-@manufactured_year
    end

    public
    def age 
        calculate_vehicle_age
    end
end