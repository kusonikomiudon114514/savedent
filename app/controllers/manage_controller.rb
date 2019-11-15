class ManageController < ApplicationController
  def school
    @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
  end

  def search_year																																																				
    if params[:search][:year].present?
      @reportschools = Reportschool.all.order(created_at: :desc)
      @reportschools = @reportschools.where("created_at like 'params[:search][:year]" + "%'")
      session[:search_year] = params[:search][:year]
    else																										
      @reportschools = Reportschool.all								
      session[:search_year] = nil		
    end																										
     render :index																										
  end					

end
