class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit, :update, :destroy]

  # GET /fields
  # GET /fields.json
  def index
    @fields = Field.all
  end

  # GET /fields/1
  # GET /fields/1.json
  def show
  end

  # GET /fields/new
  def new
    @field = Field.new
  end

  # GET /fields/1/edit
  def edit
  end

  # POST /fields
  # POST /fields.json
  def create
    @field = Field.new(field_params)

    respond_to do |format|
      if @field.save
        format.html { redirect_to @field, notice: 'Field was successfully created.' }
        format.json { render :show, status: :created, location: @field }
      else
        format.html { render :new }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fields/1
  # PATCH/PUT /fields/1.json
  def update
    respond_to do |format|
      if @field.update(field_params)
        format.html { redirect_to @field, notice: 'Field was successfully updated.' }
        format.json { render :show, status: :ok, location: @field }
      else
        format.html { render :edit }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fields/1
  # DELETE /fields/1.json
  def destroy
    @field.destroy
    respond_to do |format|
      format.html { redirect_to fields_url, notice: 'Field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field
      @field = Field.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_params
      params.require(:field).permit(:name)
    end
end
