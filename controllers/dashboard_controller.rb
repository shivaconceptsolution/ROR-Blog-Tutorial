class DashboardController < ApplicationController
  def index
  	email=session[:us]
  	if email!=nil
  	@data=Register.where("email = ?",email).take
    else
     redirect_to '/welcome/index'
    end	

  end
  def logout
    session.clear
    redirect_to '/welcome/index'
  end	
end
