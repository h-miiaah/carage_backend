class Api::V1::CarsController < ApplicationController

    def index
        cars = Car.all
        # render json: cars
        render json: CarSerializer.new(cars)
        # options = {
        #     include: [:brand]
        # }
        # render json: CarSerializer.new(cars, options)
    end

    def create
        car = Car.new(car_params)
        if car.save
            render json: car, status: :accepted
        else
            render json: {errors: car.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def car_params
        params.require(:car).permit(:name, :year, :color, :mileage, :image_url, :brand_id)
    end

end
