class ManageController < ApplicationController
  def school
    @reportschools = Reportschool.all.order(created_at: :desc)
  end

  def search_year																																																				
    if params[:search][:year].present?
      @reportschools = Reportschool.all.order(created_at: :desc)
      @reportschools = @reportschools.where("created_at between '#{params[:search][:year]}-04-01 00:00:00' and '#{params[:search][:year].to_i + 1}-03-31 23:59:59'")
      session[:search_year] = params[:search][:year]
    else																										
      @reportschools = Reportschool.all								
      session[:search_year] = nil		
    end																										
     render :school																										
  end					

  def manydestory																																																				
    if params[:search][:year].present?
      if params[:nendo]
        @reportschools = Reportschool.all.order(created_at: :desc)
        @reportschools = @reportschools.where("created_at between '#{params[:search][:year]}-04-01 00:00:00' and '#{params[:search][:year].to_i + 1}-03-31 23:59:59'")
        @reportschools.each do |reportschool|
          reportschool.destroy
        end
        session[:search_year] = params[:search][:year]
      else																										
        @reportschools = Reportschool.all								
        session[:search_year] = nil		
      end				
    end																						
     render :school																										
  end					

end
