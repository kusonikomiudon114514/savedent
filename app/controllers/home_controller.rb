class HomeController < ApplicationController
  before_action :set_home, only: [ :update, :destroy]
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
