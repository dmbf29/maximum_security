class CriminalTagsController < ApplicationController

  def new
    @criminal = Criminal.find(params[:criminal_id])
    @criminal_tag = CriminalTag.new(criminal: @criminal)
  end

  def create
    @criminal = Criminal.find(params[:criminal_id])
    tags = Tag.where(id: params[:criminal_tag][:tag_id])
    tags.each do |tag|
      @criminal_tag = CriminalTag.create(tag: tag, criminal: @criminal)
    end
    redirect_to prison_path(@criminal.prison)
  end

  private

  def criminal_tag_params
    params.require(:criminal_tag).permit(:tag_id)
  end
end
