class RjlogsController < ApplicationController
  before_action :set_rjlog, only: [:show, :edit, :update, :destroy]

  # GET /rjlogs
  # GET /rjlogs.json
  def index
    @rjlogs = Rjlog.all
  end

  # GET /rjlogs/1
  # GET /rjlogs/1.json
  def show
  end

  # GET /rjlogs/new
  def new
    @rjlog = Rjlog.new
  end

  # GET /rjlogs/1/edit
  def edit
  end

  # POST /rjlogs
  # POST /rjlogs.json
  def create
    @rjlog = Rjlog.new(rjlog_params)

    respond_to do |format|
      if @rjlog.save
        format.html { redirect_to @rjlog, notice: 'Rjlog was successfully created.' }
        format.json { render :show, status: :created, location: @rjlog }
      else
        format.html { render :new }
        format.json { render json: @rjlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rjlogs/1
  # PATCH/PUT /rjlogs/1.json
  def update
    respond_to do |format|
      if @rjlog.update(rjlog_params)
        format.html { redirect_to @rjlog, notice: 'Rjlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @rjlog }
      else
        format.html { render :edit }
        format.json { render json: @rjlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rjlogs/1
  # DELETE /rjlogs/1.json
  def destroy
    @rjlog.destroy
    respond_to do |format|
      format.html { redirect_to rjlogs_url, notice: 'Rjlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rjlog
      @rjlog = Rjlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rjlog_params
      params.require(:rjlog).permit(:user_id, :reportjob_id)
    end
end
