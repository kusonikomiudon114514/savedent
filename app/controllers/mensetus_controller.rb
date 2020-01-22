class MensetusController < ApplicationController
  before_action :set_mensetu, only: [:show, :edit, :update, :destroy]

  # GET /mensetus
  # GET /mensetus.json
  def index
    @mensetus = Mensetu.where(user_id: current_user.id).order(created_at: :desc)
    @mensetus_ok_teacher = Mensetu.where(status: 0).order(created_at: :desc)
    @mensetus_kakunin_teacher = Mensetu.where(status: 1).order(created_at: :desc)
    @mensetus_yoyaku_teacher = Mensetu.where(status: 2).order(created_at: :desc)
    @sensei = checksensei
  end

  # GET /mensetus/1
  # GET /mensetus/1.json
  def show
    @sensei = checksensei
  end

  # GET /mensetus/new
  def new
    @mensetu = Mensetu.new 
    @sensei = checksensei
  end

  # GET /mensetus/1/edit
  def edit
    @sensei = checksensei
  end

  # POST /mensetus
  # POST /mensetus.json
  def create
    @mensetu = Mensetu.new(mensetu_params)
    @mensetu.user_id=current_user.id
    #@mensetu.status = 0

    respond_to do |format|
      if @mensetu.save
        format.html { redirect_to @mensetu, notice: '作成しました' }
        format.json { render :show, status: :created, location: @mensetu }
      else
        format.html { render :new }
        format.json { render json: @mensetu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensetus/1
  # PATCH/PUT /mensetus/1.json
  def update
    respond_to do |format|
      if @mensetu.update(mensetu_params)
        format.html { redirect_to @mensetu, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @mensetu }
      else
        format.html { render :edit }
        format.json { render json: @mensetu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensetus/1
  # DELETE /mensetus/1.json
  def destroy
    @mensetu.destroy
    respond_to do |format|
      format.html { redirect_to mensetus_url, notice: '削除しました.' }
      format.json { head :no_content }
    end
  end

  private
   #  Use callbacks to share common setup or constraints between actions.
    def set_mensetu
      @mensetu = Mensetu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mensetu_params
      params.require(:mensetu).permit(:name, :start_time, :status)
    end
end
