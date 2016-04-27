class ConditionTypesController < ApplicationController
  before_action :set_condition_type, only: [:show, :edit, :update, :destroy]

  # GET /condition_types
  # GET /condition_types.json
  def index
    @condition_types = ConditionType.all
  end

  # GET /condition_types/1
  # GET /condition_types/1.json
  def show
  end

  # GET /condition_types/new
  def new
    @condition_type = ConditionType.new
  end

  # GET /condition_types/1/edit
  def edit
  end

  # POST /condition_types
  # POST /condition_types.json
  def create
    @condition_type = ConditionType.new(condition_type_params)

    respond_to do |format|
      if @condition_type.save
        format.html { redirect_to @condition_type, notice: 'Condition type was successfully created.' }
        format.json { render :show, status: :created, location: @condition_type }
      else
        format.html { render :new }
        format.json { render json: @condition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condition_types/1
  # PATCH/PUT /condition_types/1.json
  def update
    respond_to do |format|
      if @condition_type.update(condition_type_params)
        format.html { redirect_to @condition_type, notice: 'Condition type was successfully updated.' }
        format.json { render :show, status: :ok, location: @condition_type }
      else
        format.html { render :edit }
        format.json { render json: @condition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condition_types/1
  # DELETE /condition_types/1.json
  def destroy
    @condition_type.destroy
    respond_to do |format|
      format.html { redirect_to condition_types_url, notice: 'Condition type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition_type
      @condition_type = ConditionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condition_type_params
      params.require(:condition_type).permit(:name)
    end
end
