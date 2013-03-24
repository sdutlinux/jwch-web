class HerosController < ApplicationController
	layout false 
	
  def new
  	@hero = Hero.new

  	respond_to do |format|
  		format.html
  	end
  end

  def create
  	@hero = Hero.new(params[:hero])
  	@hero.user_agent = request.env['HTTP_USER_AGENT']

  	respond_to do |format|
  		if @hero.save
  			format.html {redirect_to :action => :success}
  		else
  			format.html { render action: "new" }
  		end
  	end
  end

  def success 
  	render :text => "success"
  end
end
