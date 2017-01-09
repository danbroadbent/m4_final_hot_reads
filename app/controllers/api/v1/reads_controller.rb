class Api::V1::ReadsController < ApplicationController
  def create
    @read = Read.find_or_create_by(read_params)
    @read.read_count += 1
    if @read.save
      render json: @read, status: 201
    else
      render json: @read.errors.full_messages, status: 500
    end
  end

  private
    def read_params
      params.permit(:url)
    end
end
