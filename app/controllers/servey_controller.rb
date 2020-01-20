class ServeyController < ApplicationController
  def top
    @reportjobs = Reportjob.all.order(created_at: :desc)
    @sensei = checksensei
  end

  def field_search

    if params[:search][:field].present?
      @reportjobs = Reportjob.where(user_id: current_user.id).order(created_at: :desc)
      @reportjobs = @reportjobs.where(field_id: params[:search][:field])
      session[:search_field] = params[:search][:field]
     else
      @reportjobs = Reportjob.all
      session[:search_field] = nil
     end
    render :top
   end
 
   def zigyousyo_search
 
     if params[:search][:zigyousyo].present?
       @reportjobs = Reportjob.where(user_id: current_user.id).order(created_at: :desc)
       @reportjobs = @reportjobs.where(zigyousyo: params[:search][:zigyousyo])
       session[:search_zigyousyo] = params[:search][:zigyousyo]
      else
       @reportjobs = Reportjob.all
       session[:search_zigyousyo] = nil
      end
     render :top
   end
 

end
