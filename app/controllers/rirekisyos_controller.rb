class RirekisyosController < ApplicationController
  before_action :set_rirekisyo, only: [:show, :edit, :update, :destroy]

  # GET /rirekisyos
  # GET /rirekisyos.json
  def index
    @rirekisyos = Rirekisyo.all
  end

  # GET /rirekisyos/1
  # GET /rirekisyos/1.json
  def show
  end

  # GET /rirekisyos/new
  def new
    @rirekisyo = Rirekisyo.new
  end

  # GET /rirekisyos/1/edit
  def edit
  end

  # POST /rirekisyos
  # POST /rirekisyos.json
  def create
    @rirekisyo = Rirekisyo.new(rirekisyo_params)

    respond_to do |format|
      if @rirekisyo.save
        format.html { redirect_to @rirekisyo, notice: 'Rirekisyo was successfully created.' }
        format.json { render :show, status: :created, location: @rirekisyo }
      else
        format.html { render :new }
        format.json { render json: @rirekisyo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rirekisyos/1
  # PATCH/PUT /rirekisyos/1.json
  def update
    respond_to do |format|
      if @rirekisyo.update(rirekisyo_params)
        format.html { redirect_to @rirekisyo, notice: 'Rirekisyo was successfully updated.' }
        format.json { render :show, status: :ok, location: @rirekisyo }
      else
        format.html { render :edit }
        format.json { render json: @rirekisyo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rirekisyos/1
  # DELETE /rirekisyos/1.json
  def destroy
    @rirekisyo.destroy
    respond_to do |format|
      format.html { redirect_to rirekisyos_url, notice: 'Rirekisyo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rirekisyo
      @rirekisyo = Rirekisyo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rirekisyo_params
      params.require(:rirekisyo).permit(:title, :hizuke)
    end
end