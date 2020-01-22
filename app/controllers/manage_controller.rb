class ManageController < ApplicationController
  def school
    @reportschools = Reportschool.all.order(created_at: :desc)
    @reportjobs = Reportjob.all.order(created_at: :desc)
    @sensei = checksensei
  end


  def search_year																																																				
    if params[:search][:year].present?
      @reportschools = Reportschool.all.order(created_at: :desc)
      @reportschools = @reportschools.where("created_at between '#{params[:search][:year]}-04-01 00:00:00' and '#{params[:search][:year].to_i + 1}-03-31 23:59:59'")
      session[:search_year] = params[:search][:year]
      @reportjobs = Reportjob.all.order(created_at: :desc)
    else																										
      @reportschools = Reportschool.all								
      session[:search_year] = nil	
      @reportjobs = Reportjob.all.order(created_at: :desc)	
    end																										
     render :school																										
  end	
  
  def survey_year																																																				
    if params[:survey][:year].present?
      @reportjobs = Reportjob.all.order(created_at: :desc)
      @reportjobs = @reportjobs.where("created_at between '#{params[:survey][:year]}-04-01 00:00:00' and '#{params[:survey][:year].to_i + 1}-03-31 23:59:59'")
      session[:survey_year] = params[:survey][:year]
      @reportschools = Reportschool.all.order(created_at: :desc)
    else																										
      @reportjobs = Reportjob.all								
      session[:survey_year] = nil		
      @reportschools = Reportschool.all.order(created_at: :desc)
    end																										
     render :school																										
  end	

  def lotdestory																																																				
    if params[:survey][:year].present?
      if params[:nenndo]
        @reportjobs = Reportjob.all.order(created_at: :desc)
        @reportjobs = @reportjobs.where("created_at between '#{params[:survey][:year]}-04-01 00:00:00' and '#{params[:survey][:year].to_i + 1}-03-31 23:59:59'")
        @reportjobs.each do |reportjob|
          reportjob.destroy
        end
        session[:survey_year] = params[:survey][:year]
      else																										
        @reportjobs = Reportjob.all								
        session[:survey_year] = nil		
      end				
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
