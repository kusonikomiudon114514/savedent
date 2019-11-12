class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
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





end
