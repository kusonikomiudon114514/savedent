class RecommendedsController < ApplicationController
  before_action :set_recommended, only: [:show, :edit, :update, :destroy]

  # GET /recommendeds
  # GET /recommendeds.json
  def index
    @recommendeds = Recommended.all
  end

  # GET /recommendeds/1
  # GET /recommendeds/1.json
  def show
  end

  # GET /recommendeds/new
  def new
    @recommended = Recommended.new
  end

  # GET /recommendeds/1/edit
  def edit
  end

  # POST /recommendeds
  # POST /recommendeds.json
  def create
    @recommended = Recommended.new(recommended_params)

    respond_to do |format|
      if @recommended.save
        format.html { redirect_to @recommended, notice: 'Recommended was successfully created.' }
        format.json { render :show, status: :created, location: @recommended }
      else
        format.html { render :new }
        format.json { render json: @recommended.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recommendeds/1
  # PATCH/PUT /recommendeds/1.json
  def update
    respond_to do |format|
      if @recommended.update(recommended_params)
        format.html { redirect_to @recommended, notice: 'Recommended was successfully updated.' }
        format.json { render :show, status: :ok, location: @recommended }
      else
        format.html { render :edit }
        format.json { render json: @recommended.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recommendeds/1
  # DELETE /recommendeds/1.json
  def destroy
    @recommended.destroy
    respond_to do |format|
      format.html { redirect_to recommendeds_url, notice: 'Recommended was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommended
      @recommended = Recommended.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommended_params
      params.require(:recommended).permit(:name)
    end
end
