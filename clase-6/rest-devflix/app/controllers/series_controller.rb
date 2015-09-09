class SeriesController < ApplicationController
  def index
    render json: Serie.all, status: :ok
  end

  def show
    render json: Serie.find(params[:id]), status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: 'No se encontró', status: :not_found
  end
end
