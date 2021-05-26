class CarsController < ApplicationController
  before_action :search_car, only: [:index, :search]

  def index
    if params[:car_name] != nil
      car_select = Car.where(manufacturer_id: params[:car_name])
      
      render json: {name: car_select}
    end
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

  def search_car
    @q = Car.ransack(params[:q])
  end

end
