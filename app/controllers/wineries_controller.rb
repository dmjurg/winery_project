class WineriesController < ApplicationController
  before_action :set_winery, only: [:show, :edit, :update, :destroy, :favorite, :unfavorite]

  # GET /wineries
  def index
    @wineries = Winery.alphabetical
  end

  # GET /wineries/1
  def show
  end

  # GET /wineries/new
  def new
    @winery = Winery.new
  end

  # GET /wineries/1/edit
  def edit
  end

  # POST /wineries
  def create
    @winery = Winery.new(winery_params)
    if @winery.save
      redirect_to @winery, notice: 'Winery was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wineries/1
  def update
    if @winery.update(winery_params)
      redirect_to @winery, notice: 'Winery was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wineries/1
  # def destroy
  #   @winery.destroy
  #   redirect_to wineries_url, notice: 'Winery was successfully destroyed.'
  # end

  def favorite
    current_user.wineries << @winery
    redirect_to current_user
  end

  def unfavorite
    current_user.wineries.delete(@winery)
    redirect_to current_user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winery
      @winery = Winery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def winery_params
      params.require(:winery).permit(:name, :location, :website, :image, :phone_number, :visitors, :tours, :pets)
    end
end
