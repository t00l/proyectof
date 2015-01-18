class PerfilController < ApplicationController

  def index

  end

  def show
  		@usuario = User.find(current_user)
  		@usuario.perfil || Perfil.new
  		@perfil = @usuario.perfil
  end

  def update
  		@usuario = User.find(current_user)
  		@perfil = @usuario.perfil

  	if @perfil.update_attributes(perfil_params)
  		redirect_to users_path
  		flash[:notice] = "Datos Actualizados"
  	else
  		flash[:notice] = "Error al actualizar datos"
  	end
  end
end

private 

def perfil_params
    params.require(:perfil).permit(:user_id, :nombre, :apellidos, :sexo, :fecha_nacimiento, :ciudad )
end
