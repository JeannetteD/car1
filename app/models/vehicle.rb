class Vehicle

def initialize (make, model_year)
  @make = make
  @model_year = model_year
  @speed = 0
  @lights ="off"
  @parking ="off"
end

  def make
    @make
  end

  def model_year
    @model_year
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 10
  end

  def brake
    if @speed <= 6
      @speed = @speed - @speed
    else
      @speed = @speed - 7
    end
  end

  def lights
    @lights
  end

  def toggle
    if @lights == "off"
       @lights = "on"
     else
    @lights="off"
    end
  end

  def parking
    @parking
  end


  def parking_brakes
    if @parking == "off"
       @parking = "on"
     else
    @parking="off"
    end
  end
end #end of class
