class CarsController < ApplicationController
  def index
    @cars = Car.all
    @q = Car.ransack(params[:q])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      return redirect_to root_path
    end
    render :new
  end

  def search
    # @q = Car.ransack(params[:q])
    @searches = @q.result
  end

  private

  def car_params
    params.require(:car).permit(:name,
                                :price,
                                :manufacturer_id,
                                :grade,
                                :body_id,
                                :displacement,
                                :color,
                                :capacity,
                                :model_year,
                                :vehicle_type_id,
                                :mileage)
  end

end
