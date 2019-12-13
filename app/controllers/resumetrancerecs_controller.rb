class ResumetrancerecsController < ApplicationController
  before_action :set_resumetrancerec, only: [:show, :edit, :update, :destroy]
  before_action :permissionsensei_yes
  # GET /resumetrancerecs
  # GET /resumetrancerecs.json
  def index
    @resumetrancerecs = Resumetrancerec.all
  end

  # GET /resumetrancerecs/1
  # GET /resumetrancerecs/1.json
  def show
  end

  # GET /resumetrancerecs/new
  def new
    @resumetrancerec = Resumetrancerec.new
  end

  # GET /resumetrancerecs/1/edit
  def edit
  end

  # POST /resumetrancerecs
  # POST /resumetrancerecs.json
  def create
    @resumetrancerec = Resumetrancerec.new(resumetrancerec_params)

    respond_to do |format|
      if @resumetrancerec.save
        format.html { redirect_to @resumetrancerec, notice: 'Resumetrancerec was successfully created.' }
        format.json { render :show, status: :created, location: @resumetrancerec }
      else
        format.html { render :new }
        format.json { render json: @resumetrancerec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resumetrancerecs/1
  # PATCH/PUT /resumetrancerecs/1.json
  def update
    respond_to do |format|
      if @resumetrancerec.update(resumetrancerec_params)
        format.html { redirect_to @resumetrancerec, notice: 'Resumetrancerec was successfully updated.' }
        format.json { render :show, status: :ok, location: @resumetrancerec }
      else
        format.html { render :edit }
        format.json { render json: @resumetrancerec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resumetrancerecs/1
  # DELETE /resumetrancerecs/1.json
  def destroy
    @resumetrancerec.destroy
    respond_to do |format|
      format.html { redirect_to resumetrancerecs_url, notice: 'Resumetrancerec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resumetrancerec
      @resumetrancerec = Resumetrancerec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resumetrancerec_params
      params.require(:resumetrancerec).permit(:resume_id, :user_id)
    end
end
