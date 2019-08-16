class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = login(params[:email], params[:password])
    if user
      redirect_back_or_to root_url, :notice => "Login exitoso!"
    else
      flash.now.alert = "Email o contraseña invalidos."
    end
  end

  def destroy
    logout
    redirect_to :login, :notice => "logout exitoso!"
end
end