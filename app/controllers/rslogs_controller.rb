class RslogsController < ApplicationController
  before_action :set_rslog, only: [:show, :edit, :update, :destroy]

  # GET /rslogs
  # GET /rslogs.json
  def index
    @rslogs = Rslog.all
  end

  # GET /rslogs/1
  # GET /rslogs/1.json
  def show
  end

  # GET /rslogs/new
  def new
    @rslog = Rslog.new
  end

  # GET /rslogs/1/edit
  def edit
  end

  # POST /rslogs
  # POST /rslogs.json
  def create
    @rslog = Rslog.new(rslog_params)

    respond_to do |format|
      if @rslog.save
        format.html { redirect_to @rslog, notice: 'Rslog was successfully created.' }
        format.json { render :show, status: :created, location: @rslog }
      else
        format.html { render :new }
        format.json { render json: @rslog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rslogs/1
  # PATCH/PUT /rslogs/1.json
  def update
    respond_to do |format|
      if @rslog.update(rslog_params)
        format.html { redirect_to @rslog, notice: 'Rslog was successfully updated.' }
        format.json { render :show, status: :ok, location: @rslog }
      else
        format.html { render :edit }
        format.json { render json: @rslog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rslogs/1
  # DELETE /rslogs/1.json
  def destroy
    @rslog.destroy
    respond_to do |format|
      format.html { redirect_to rslogs_url, notice: 'Rslog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rslog
      @rslog = Rslog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rslog_params
      params.require(:rslog).permit(:user_id, :reportschool_id)
    end
end
