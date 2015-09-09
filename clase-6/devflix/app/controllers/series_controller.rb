class SeriesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    if params[:num_temp]
      @series = Serie.where('num_temporadas > ?', params[:num_temp])
    else
      @series = Serie.all
    end
  end

  def create
    serie = Serie.new(serie_params)
    if serie.save
      render json: serie, status: :created
    else
      render json: 'No se creo'
    end
  end

  private

  def serie_params
    params.permit(:nombre, :descripcion, :num_temporadas)
  end
end
