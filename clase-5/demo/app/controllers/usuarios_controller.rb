class UsuariosController < ApplicationController
  def index
    @usuarios = Usuario.all
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      redirect_to @usuario
    else
      render json: 'No se pudo guardar el usuario'
    end
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
    @usuario.update(usuario_params)
    redirect_to @usuario
  end

  def destroy
    @usuario = Usuario.find(params[:id]).destroy
    redirect_to '/usuarios'
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nombre, :edad)
  end
end
