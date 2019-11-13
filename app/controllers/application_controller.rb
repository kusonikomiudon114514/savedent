class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
<<<<<<< HEAD


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
 
      
=======
  before_action :check_username

private
def check_username
   if current_user.nil? || controller_name == "students" || controller_name == "sessions"
   else
     students = Student.where(user_id: current_user.id)
     if students.blank?
       redirect_to new_student_path, notice: '名前を入力してください。' 
     end
   end
end





>>>>>>> fa50b5c99a968369ddb2b472d74efa347c6b9df3
end
