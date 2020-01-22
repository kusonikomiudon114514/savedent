class SearchController < ApplicationController

  def top
    @reportschools = Reportschool.all.order(created_at: :desc)
    @sensei = checksensei
  end

  def localname1_search																																																				
    if params[:search][:localname1].present?
      condition_localname1 = params[:search][:localname1]
      places = Place.where(localname1: condition_localname1)
      condition = ""
      places.each_with_index do |p, i|
        if i != 0
          condition = condition + " or "
        end
        condition = condition + "syozaichi = '" + p.todohuken + "'"
      end
      @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
     #@reportschools = @reportschools.where("syozaichi like '%" + params[:search][:place] + "%' ")
      @reportschools = @reportschools.where(condition)

      session[:search_localname1] = params[:search][:localname1]
    else																										
      @reportschools = Reportschool.all	
      session[:search_localname1] = nil
    end																										
     render :top				
  end					

  def localname2_search																																																				
    if params[:search][:localname2].present?
      condition_localname2 = params[:search][:localname2]
      places = Place.where(localname2: condition_localname2)
      condition = ""
      places.each_with_index do |p, i|
        if i != 0
          condition = condition + " or "
        end
        condition = condition + "syozaichi = '" + p.todohuken + "'"
      end
      @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
      @reportschools = @reportschools.where(condition)
      session[:search_localname2] = params[:search][:localname2]
    else																										
      @reportschools = Reportschool.all	
      session[:search_localname2] = nil
    end																										
     render :top	
  end					

  def place_search							
    if params[:search][:place].present?
      @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
      @reportschools = @reportschools.where("syozaichi like '%" + params[:search][:place] + "%'")
      session[:search_place] = params[:search][:place]
    else																										
      @reportschools = Reportschool.all	
      session[:search_place] = params[:search][:place]
    end																										
     render :top
  end					

  def type_search																																																				
    if params[:search][:type].present?
      @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
      @reportschools = @reportschools.where(type_id: params[:search][:type])
      session[:search_type] = params[:search][:type]
    else																										
      @reportschools = Reportschool.all																										
      session[:search_type] = params[:search][:type]
    end																										
     render :top
  end					

  def field_search																																																				
    if params[:search][:field].present?
      @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
      @reportschools = @reportschools.where(field_id: params[:search][:field])
      session[:search_field] = params[:search][:field]
    else																										
      @reportschools = Reportschool.all		
      session[:search_field] = params[:search][:field]
    end																										
     render :top
  end					

  def search																																																				
    if params[:search][:gakkou].present?
      @reportschools = Reportschool.all
      @reportschools = @reportschools.where("gakkou like '%" + params[:search][:gakkou] + "%'")
      session[:search_gakkou] = params[:search][:gakkou]
    else																										
      @reportschools = Reportschool.all								
      session[:search_gakkou] = nil		
    end																										
     render :top	

  end					

  def saw_search																																																				
    if params[:search][:saw].present?
      if params[:search][:saw].to_i == 1
        @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
 #      @reportschools = @reportschools.where(saw_id: params[:search][:saw])
        session[:search_saw] = params[:search][:saw]
      else
        if params[:search][:saw].to_i == 2
          #@reportschools = Reportschool.all.order(created_at: :desc)
          @reportschools = Reportschool.where.not(user_id: current_user.id).order(created_at: :desc)
          session[:search_saw] = params[:search][:saw]
        else
          @reportschools = Reportschool.all.order(created_at: :desc)
          session[:search_saw] = params[:search][:saw]
        end	
      end													
    else																										
      @reportschools = Reportschool.all
      session[:search_saw] = params[:search][:saw]
    end														
    render :top																										
  end					

end
