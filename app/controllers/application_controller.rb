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

    def permissionsensei_yes
      if checksensei == true
       #redirect_to ('http://localhost:3000/home/top')  
       redirect_to root_path, notice: '権限がないためアクセスできません'
      else
  
     end 
    end

    def permissionsensei_no
      if checksensei == true
       else
        #redirect_to ('http://localhost:3000/home/top')  
        redirect_to root_path,notice: '権限がないためアクセスできません'

      end
    end 

    def permissionadmin
       if checkadmin == true
       else
        redirect_to root_path,notice: '権限がないためアクセスできません'

       end
    end




    
end



      
