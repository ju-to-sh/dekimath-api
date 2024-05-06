class NumbersController < ApplicationController
  def index
    @numbers = Number.question_range_of_numbers(1,20)
    render json: @numbers
  end
end
