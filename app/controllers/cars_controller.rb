class CarsController < ApplicationController
    # before_action :authorize, except: [:index, :show]
    def index
        cars = Car.all
        render json: cars, status: :ok
    end
    def show
        car = find_car
        if car
            render json: car, status: :ok
        else
            render json: { error: "Car not found" }, state: :not_found
        end
    end
    def create
        car = Car.create(car_params)
        if car.valid?
            render json: car, status: :created
        else
            render json: { errors: "An error occured. Please try again" }, status: 404
        end
    end

    def update
        car = find_car
        if car
            car.update(car_params)
            render json: car, status: :accepted
        else
            render json: { error: "Car not found" }, status: :not_found
        end
    end

    def delete
        car = find_car
        car.destroy
        # if car
        #     car.destroy
        #     # head: no_content
        # else
        #     render json: { error: "Car not found" }, status: :not_found
        # end
    end
    private
    def car_params
        params.permit(:model, :year_of_manufacture, :transmission, :fuel_type, :price, :user_id,  :front_right_url, :back_left_url, :interior_url)
    end
    def find_car
        car = Car.find_by(id: params[:id])
    end
end