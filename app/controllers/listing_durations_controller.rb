class ListingDurationsController < ApplicationController
  before_action :set_listing_duration, only: [:show, :edit, :update, :destroy]

  # GET /listing_durations
  # GET /listing_durations.json
  def index
    @listing_durations = ListingDuration.all
  end

  # GET /listing_durations/1
  # GET /listing_durations/1.json
  def show
  end

  # GET /listing_durations/new
  def new
    @listing_duration = ListingDuration.new
  end

  # GET /listing_durations/1/edit
  def edit
  end

  # POST /listing_durations
  # POST /listing_durations.json
  def create
    @listing_duration = ListingDuration.new(listing_duration_params)

    respond_to do |format|
      if @listing_duration.save
        format.html { redirect_to @listing_duration, notice: 'Listing duration was successfully created.' }
        format.json { render :show, status: :created, location: @listing_duration }
      else
        format.html { render :new }
        format.json { render json: @listing_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listing_durations/1
  # PATCH/PUT /listing_durations/1.json
  def update
    respond_to do |format|
      if @listing_duration.update(listing_duration_params)
        format.html { redirect_to @listing_duration, notice: 'Listing duration was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing_duration }
      else
        format.html { render :edit }
        format.json { render json: @listing_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listing_durations/1
  # DELETE /listing_durations/1.json
  def destroy
    @listing_duration.destroy
    respond_to do |format|
      format.html { redirect_to listing_durations_url, notice: 'Listing duration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing_duration
      @listing_duration = ListingDuration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_duration_params
      params.require(:listing_duration).permit(:name)
    end
end
