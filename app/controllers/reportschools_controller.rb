class ReportschoolsController < ApplicationController
  before_action :set_reportschool, only: [:show, :edit, :update, :destroy]
  before_action :select_schoollog, only: [:localname1_search, :localname2_search, :place_search, :type_search, :field_search, :search, :saw_search, :index]

  
  # GET /reportschools
  # GET /reportschools.json
  def index
#   @reportschools = Reportschool.all
    @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
  end

  # GET /reportschools/1
  # GET /reportschools/1.json
  def show
    rslog = Rslog.new
    rslog.user_id = current_user.id
    rslog.reportschool_id = params[:id]
    rslog.save
  end

  # GET /reportschools/new
  def new
    @reportschool = Reportschool.new
  end

  # GET /reportschools/1/edit
  def edit
  end

  # POST /reportschools
  # POST /reportschools.json
  def create
    @reportschool = Reportschool.new(reportschool_params)
    @reportschool.user_id = current_user.id
    @reportschool.check = false
    respond_to do |format|
      if @reportschool.save
        format.html { redirect_to @reportschool, notice: '作成しました' }
        format.json { render :show, status: :created, location: @reportschool }
      else
        format.html { render :new }
        format.json { render json: @reportschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportschools/1
  # PATCH/PUT /reportschools/1.json
  def update
    respond_to do |format|
      if @reportschool.update(reportschool_params)
        format.html { redirect_to @reportschool, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @reportschool }
      else
        format.html { render :edit }
        format.json { render json: @reportschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportschools/1
  # DELETE /reportschools/1.json
  def destroy
    @reportschool.destroy
    respond_to do |format|
      format.html { redirect_to reportschools_url, notice: '削除しました' }
      format.json { head :no_content }
    end
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
     render :index																										
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
     render :index																										
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
     render :index																										
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
     render :index																										
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
     render :index																										
  end					

  def search																																																				
    if params[:search][:gakkou].present?
      @reportschools = Reportschool.where(user_id: current_user.id).order(created_at: :desc)
      @reportschools = @reportschools.where("gakkou like '%" + params[:search][:gakkou] + "%'")
      session[:search_gakkou] = params[:search][:gakkou]
    else																										
      @reportschools = Reportschool.all								
      session[:search_gakkou] = nil		
    end																										
     render :index																										
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
    render :index																										
  end					


  private
    def select_schoollog
      @schoollogs = Rslog.where(user_id: current_user.id).order(created_at: :desc).first(10)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_reportschool
      @reportschool = Reportschool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reportschool_params
      params.require(:reportschool).permit(:status, :user_id, :type_id, :field_id, :gakkou, :gakubu, :gakka, :course, :syozaichi, :shikennzyou, :gokaku, :shikennbi, :exam_id, :detail, :japanese, :math, :social, :science, :english, :recommended_id, :mennsetsu, :syoronnbunn, :shikenn, :kanso, :check)
    end


  end 