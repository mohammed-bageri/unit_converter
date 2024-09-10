class ConvertersController < ApplicationController
  def length
    from_unit = params[:from_unit]
    to_unit = params[:to_unit]
    amount = params[:amount]

    converted_amount = Unit.new("#{amount} #{from_unit}").convert_to("#{to_unit}").to_s

    render json: {
      result: converted_amount,
      message: "Length converted successfully!"
    }
  end

  def weight
    from_unit = params[:from_unit]
    to_unit = params[:to_unit]
    amount = params[:amount]

    converted_amount = Unit.new("#{amount} #{from_unit}").convert_to("#{to_unit}").to_s

    render json: {
      result: converted_amount,
      message: "Weight converted successfully!"
    }
  end

  def temperature
    from_unit = params[:from_unit]
    to_unit = params[:to_unit]
    amount = params[:amount]

    converted_amount = Unit.new("#{amount} #{from_unit}").convert_to("#{to_unit}").to_s

    render json: {
      result: converted_amount,
      message: "Temperature converted successfully!"
    }
  end
end
