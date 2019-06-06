class WelcomeController < ApplicationController
  def index
  	if params[:btnsubmit]!=nil
  		uid = params[:txtuser]
  		pwd = params[:txtpass]
  		@data=Register.where("email = ? AND password = ?",uid,pwd).take
  		if @data!=nil
  			redirect_to "/articles"
  	    else
  	       @error = "invalid userid and password" 		
        end	
    end
   end
  def reg
  	    if params[:btnsubmit]!=nil 
        email = params[:txtemail]
  		pwd = params[:txtpass]  
  		fname = params[:txtfname]
  		mobile = params[:txtmobile] 
  		@r = Register.new()
  		@r.email=email
  		@r.password=pwd
  		@r.fname=fname
  		@r.mobile=mobile
  		@r.save
  		redirect_to "/welcome/index"
  	    end

end 	
end
