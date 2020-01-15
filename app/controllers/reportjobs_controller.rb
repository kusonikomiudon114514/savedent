class ReportjobsController < ApplicationController
  before_action :set_reportjob, only: [:show, :edit, :update, :destroy]
  before_action :select_joblog, only: [:field_search, :zigyousyo_search, :index]

  # GET /reportjobs
  # GET /reportjobs.json
  def index
 #  @reportjobs = Reportjob.all
    @reportjobs = Reportjob.all.order(created_at: :desc)

  end

  # GET /reportjobs/1
  # GET /reportjobs/1.json
  def show
    rjlog = Rjlog.new
    rjlog.user_id = current_user.id
    rjlog.reportjob_id = params[:id]
    rjlog.save
    @sensei = checksensei
  end

  # GET /reportjobs/new
  def new
    @reportjob = Reportjob.new
    @sensei = checksensei
  end

  # GET /reportjobs/1/edit
  def edit
    @sensei = checksensei
  end

  # POST /reportjobs
  # POST /reportjobs.json
  def create
    @reportjob = Reportjob.new(reportjob_params)
    @reportjob.user_id = current_user.id
    @reportjob.check = false
    respond_to do |format|
      if @reportjob.save
        format.html { redirect_to @reportjob, notice: '作成しました' }
        format.json { render :show, status: :created, location: @reportjob }
      else
        format.html { render :new }
        format.json { render json: @reportjob.errorj, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportjobs/1
  # PATCH/PUT /reportjobs/1.json
  def update
    respond_to do |format|
      if @reportjob.update(reportjob_params)
        format.html { redirect_to @reportjob, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @reportjob }
      else
        format.html { render :edit }
        format.json { render json: @reportjob.errorj, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportjobs/1
  # DELETE /reportjobs/1.json
  def destroy
    @reportjob.destroy
    respond_to do |format|
      format.html { redirect_to reportjobs_url, notice: '削除しました' }
      format.json { head :no_content }
    end
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
   render :index
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
    render :index
  end

  private
  def select_joblog
    @joblogs = Rjlog.where(user_id: current_user.id).order(created_at: :desc).first(10)
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_reportjob
      @reportjob = Reportjob.find(params[:id])
    end

    # Never trust parameterj from the scary internet, only allow the white list through.
    def reportjob_params
      params.require(:reportjob).permit(:status, :user_id, :field_id, :day, :syokusyu, :zigyousyo, :mediation_id, :syozaiti, :shikennzyou, :zyukennsyasuu, :ithizi_hikki, :ithizi_tekisei, :ithizi_mensetsu, :zikan_ithihi, :zikan_ithime, :zikan_ithisa, :nizi_hikki, :nizi_tekisei, :nizi_mennsetsu, :zikan_nihi, :zikan_nite, :zikan_nime, :zikan_nisa, :subject_id, :zikan_japanese, :zikan_math, :zikan_social, :zikan_english, :zikan_ippann, :zikan_tekisei, :interview_id, :iin, :zikan_mensetsu, :shitsumon, :mensetsusonota, :sakubun, :bunnsyouryou, :other, :check)
    end
end
