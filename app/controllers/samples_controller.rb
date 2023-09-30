# app/controllers/samples_controller.rb

class SamplesController < ApplicationController
  def index
    @samples = Sample.all
    render json: @samples
  end

  def create
    @sample = Sample.new(sample_params)
    if @sample.save
      render json: @sample, status: :created
    else
      render json: @sample.errors, status: :unprocessable_entity
    end
  end

  private

  def sample_params
    params.require(:sample).permit(:title)
  end
end