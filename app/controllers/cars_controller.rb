class CarsController < ApplicationController
  def index
  end

  def create
      car = Vehicle.new(params[:make], params[:model_year])
      session[:car] = car.to_yaml
      redirect_to '/cars/status'
    end

  #3.Given that I have entered the make and model year, when I click on a button labelled Simulate Car, then I am taken to a status page showing make, model year and initial speed of the car.

  def status
    @car = YAML.load(session[:car])
  end

  #4.Given that I have created a car, when I click an accelerate button, then I make it speed up in 10Km/h increments.
  #Hint: Create a route get 'cars/accelerate'. Then in the controller create:
def accelerate
  @car = YAML.load(session[:car])
  @car.accelerate
  session[:car] = @car.to_yaml
  render '/cars/status'
end

def brake
  @car = YAML.load(session[:car])
  @car.brake
  session[:car] = @car.to_yaml
  render '/cars/status'
end

def lights
  @car = YAML.load(session[:car])
  @car.toggle
  session[:car] = @car.to_yaml
  render '/cars/status'
end

def parking
  @car = YAML.load(session[:car])
  @car.parking_brakes
  session[:car] = @car.to_yaml
  render '/cars/status'
end


end#end of class
