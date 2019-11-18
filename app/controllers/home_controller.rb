class HomeController < ApplicationController
  def top
    @name = 'email'
    @resumetrancerecs = Resumetrancerec.all.order(created_at: :desc) 
    @sensei = checksensei
    @admin = checkadmin
  
  end

  def sensei
    @rirekisyo = Rirekisyo.find(params[:id])
  end


end
