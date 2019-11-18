class MensetuController < ApplicationController

def top
end

def index
  #   @reportschools = Reportschool.all
  @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
end

end
