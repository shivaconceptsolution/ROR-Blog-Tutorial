class WelcomeController < ApplicationController
  def index
  	if params[:btnsubmit]!=nil
  		uid = params[:txtuser]
  		pwd = params[:txtpass]
  		if uid=="admin" and pwd=="123"
  			redirect_to "/articles"
  	    else
  	       @error = "invalid userid and password" 		


  		end	

    end
    		
  end
end
