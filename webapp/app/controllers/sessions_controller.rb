class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = login(params[:email], params[:password])
    if user
      redirect_back_or_to root_url, :notice => "Login exitoso!"
    else
      redirect_to :login, :notice => "Email/contraseña incorrectos"
    end
  end

  def destroy
    logout
    redirect_to :login, :notice => "logout exitoso!"
end
end