class NewpapersController < ApplicationController
  before_action :set_newpaper, only: [:show, :edit, :update, :destroy]

  # GET /newpapers
  # GET /newpapers.json
  def index
    @newpapers = Newpaper.all
  end

  # GET /newpapers/1
  # GET /newpapers/1.json
  def show
  end

  # GET /newpapers/new
  def new
    @newpaper = Newpaper.new
  end

  # GET /newpapers/1/edit
  def edit
  end

  # POST /newpapers
  # POST /newpapers.json
  def create
    @newpaper = Newpaper.new(newpaper_params)

    respond_to do |format|
      if @newpaper.save
        format.html { redirect_to @newpaper, notice: 'Newpaper was successfully created.' }
        format.json { render :show, status: :created, location: @newpaper }
      else
        format.html { render :new }
        format.json { render json: @newpaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newpapers/1
  # PATCH/PUT /newpapers/1.json
  def update
    respond_to do |format|
      if @newpaper.update(newpaper_params)
        format.html { redirect_to @newpaper, notice: 'Newpaper was successfully updated.' }
        format.json { render :show, status: :ok, location: @newpaper }
      else
        format.html { render :edit }
        format.json { render json: @newpaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newpapers/1
  # DELETE /newpapers/1.json
  def destroy
    @newpaper.destroy
    respond_to do |format|
      format.html { redirect_to newpapers_url, notice: 'Newpaper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newpaper
      @newpaper = Newpaper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newpaper_params
      params.require(:newpaper).permit(:user_id, :reportschool_id)
    end
end
