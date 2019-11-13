class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  private
    def checksensei
     teacher = Teacher.where(user_id: current_user.id)
      if teacher.blank?
       false
      else
       true
      end

    end 

    def checkadmin
      teacher = Teacher.where(user_id: current_user.id)
       if teacher.blank?
        false
       else
        if teacher[0].admin
          true
        else
          false
        end
       end
 
     end 
 
      
end
