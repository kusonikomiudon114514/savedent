class HomeController < ApplicationController
  def top
    @name = 'email'
    @resumetrancerecs = Resumetrancerec.all.order(created_at: :desc) 
  
  end

  def sensei
    @rirekisyo = Rirekisyo.find(params[:id])
  end


end
