class HuntsController < ApplicationController
  def new
    @hunt = Hunt.new
  end

  def create
    @hunt = Hunt.new(params[:hunt])
    if @hunt.save
      redirect_to @hunt
    else
      render :action => :new
    end
  end

  def show
    @hunt = Hunt.find_by_id(params[:id])
  end
end
