class CriminalsController < ApplicationController
  def create
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new(criminal_params)
    @criminal.prison = @prison
    if @criminal.save
      redirect_to prison_path(@prison)
    else
      render 'prisons/show'
    end
  end

  def destroy
    @criminal = Criminal.find(params[:id])
    @criminal.destroy
    redirect_to prison_path(@criminal.prison)
  end

  private

  def criminal_params
    params.require(:criminal).permit(:name, :specialty, :picture_url)
  end
end
