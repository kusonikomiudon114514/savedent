class MediationsController < ApplicationController
  before_action :set_mediation, only: [:show, :edit, :update, :destroy]
  before_action :permissionadmin
  # GET /mediations
  # GET /mediations.json
  def index
    @mediations = Mediation.all
  end

  # GET /mediations/1
  # GET /mediations/1.json
  def show
  end

  # GET /mediations/new
  def new
    @mediation = Mediation.new
  end

  # GET /mediations/1/edit
  def edit
  end

  # POST /mediations
  # POST /mediations.json
  def create
    @mediation = Mediation.new(mediation_params)

    respond_to do |format|
      if @mediation.save
        format.html { redirect_to @mediation, notice: 'Mediation was successfully created.' }
        format.json { render :show, status: :created, location: @mediation }
      else
        format.html { render :new }
        format.json { render json: @mediation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mediations/1
  # PATCH/PUT /mediations/1.json
  def update
    respond_to do |format|
      if @mediation.update(mediation_params)
        format.html { redirect_to @mediation, notice: 'Mediation was successfully updated.' }
        format.json { render :show, status: :ok, location: @mediation }
      else
        format.html { render :edit }
        format.json { render json: @mediation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mediations/1
  # DELETE /mediations/1.json
  def destroy
    @mediation.destroy
    respond_to do |format|
      format.html { redirect_to mediations_url, notice: 'Mediation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mediation
      @mediation = Mediation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mediation_params
      params.require(:mediation).permit(:name)
    end
end
