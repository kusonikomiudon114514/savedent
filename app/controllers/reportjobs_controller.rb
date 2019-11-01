class ReportjobsController < ApplicationController
  before_action :set_reportjob, only: [:show, :edit, :update, :destroy]

  # GET /reportjobs
  # GET /reportjobs.json
  def index
    @reportjobs = Reportjob.all
  end

  # GET /reportjobs/1
  # GET /reportjobs/1.json
  def show
  end

  # GET /reportjobs/new
  def new
    @reportjob = Reportjob.new
  end

  # GET /reportjobs/1/edit
  def edit
  end

  # POST /reportjobs
  # POST /reportjobs.json
  def create
    @reportjob = Reportjob.new(reportjob_params)
    @reportjob.user_id=current_user.id

    respond_to do |format|
      if @reportjob.save
        format.html { redirect_to @reportjob, notice: 'Reportjob was successfully created.' }
        format.json { render :show, status: :created, location: @reportjob }
      else
        format.html { render :new }
        format.json { render json: @reportjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportjobs/1
  # PATCH/PUT /reportjobs/1.json
  def update
    respond_to do |format|
      if @reportjob.update(reportjob_params)
        format.html { redirect_to @reportjob, notice: 'Reportjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @reportjob }
      else
        format.html { render :edit }
        format.json { render json: @reportjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportjobs/1
  # DELETE /reportjobs/1.json
  def destroy
    @reportjob.destroy
    respond_to do |format|
      format.html { redirect_to reportjobs_url, notice: 'Reportjob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reportjob
      @reportjob = Reportjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reportjob_params
      params.require(:reportjob).permit(:status, :user_id, :field_id, :day, :syokusyu, :zigyousyo, :mediation_id, :syozaiti, :shikennzyou, :zyukennsyasuu, :ithizi_hikki, :ithizi_tekisei, :ithizi_mensetsu, :zikan_ithihi, :zikan_ithime, :zikan_ithisa, :nizi_hikki, :nizi_tekisei, :nizi_mennsetsu, :zikan_nihi, :zikan_nite, :zikan_nime, :zikan_nisa, :subject_id, :zikan_japanese, :zikan_math, :zikan_social, :zikan_english, :zikan_ippann, :zikan_tekisei, :interview_id, :iin, :zikan_mensetsu, :shitsumon, :mensetsusonota, :sakubun, :bunnsyouryou, :other)
    end
end
