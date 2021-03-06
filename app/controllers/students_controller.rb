class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  # GET /students
  # GET /students.json
  def index
    @students = Student.where(user_id: current_user.id)
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    @student.user_id = current_user.id
    if params[:student][:filename].present?
      @student.filename = params[:student][:filename].original_filename

      File.open("app/assets/images/#{@student.filename}", 'w+b') {|f|f.write(params[:student][:filename].read)}
    end
    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: '作成しました。' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
     

      if @student.update(student_params)
        if params[:student][:filename].present?
          @student.filename = params[:student][:filename].original_filename
    
          File.open("app/assets/images/#{@student.filename}", 'w+b') {|f|f.write(params[:student][:filename].read)}
        end
        @student.save
        format.html { redirect_to @student, notice: '更新しました。' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: '削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:user_id, :name, :namehurigana, :seinen, :no, :seibetsu, :zyusho, :zyushohurigana, :filename, :shikaku, :syutokubi, :gakureki1, :gakureki2, :gakureki3, :gakureki4, :gakureki5, :gakureki6, :hiduke1, :hiduke2, :hiduke3, :hiduke4, :hiduke5, :hiduke6)
    end
end
