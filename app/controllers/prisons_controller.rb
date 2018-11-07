class PrisonsController < ApplicationController
  before_action :set_prison, only: [:show, :edit, :update, :destroy]

  # GET /prisons
  def index
    @prisons = Prison.all
  end

  # GET /prisons/1
  def show
    @criminal = Criminal.new
  end

  # GET /prisons/new
  def new
    @prison = Prison.new
  end

  # GET /prisons/1/edit
  def edit
  end

  # POST /prisons
  def create
    @prison = Prison.new(prison_params)

    if @prison.save
      redirect_to @prison, notice: 'Prison was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /prisons/1
  def update
    if @prison.update(prison_params)
      redirect_to @prison, notice: 'Prison was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /prisons/1
  def destroy
    @prison.destroy
    redirect_to prisons_url, notice: 'Prison was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prison
      @prison = Prison.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prison_params
      params.require(:prison).permit(:name, :banner_url)
    end
end
