class SawsController < ApplicationController
  before_action :set_saw, only: [:show, :edit, :update, :destroy]

  # GET /saws
  # GET /saws.json
  def index
    @saws = Saw.all
  end

  # GET /saws/1
  # GET /saws/1.json
  def show
  end

  # GET /saws/new
  def new
    @saw = Saw.new
  end

  # GET /saws/1/edit
  def edit
  end

  # POST /saws
  # POST /saws.json
  def create
    @saw = Saw.new(saw_params)

    respond_to do |format|
      if @saw.save
        format.html { redirect_to @saw, notice: 'Saw was successfully created.' }
        format.json { render :show, status: :created, location: @saw }
      else
        format.html { render :new }
        format.json { render json: @saw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saws/1
  # PATCH/PUT /saws/1.json
  def update
    respond_to do |format|
      if @saw.update(saw_params)
        format.html { redirect_to @saw, notice: 'Saw was successfully updated.' }
        format.json { render :show, status: :ok, location: @saw }
      else
        format.html { render :edit }
        format.json { render json: @saw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saws/1
  # DELETE /saws/1.json
  def destroy
    @saw.destroy
    respond_to do |format|
      format.html { redirect_to saws_url, notice: 'Saw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saw
      @saw = Saw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saw_params
      params.require(:saw).permit(:name)
    end
end
