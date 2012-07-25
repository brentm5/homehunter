class HuntsController < ApplicationController
  def new
    @hunt = Hunt.new
  end

  def create
    @hunt = Hunt.new(params[:hunt])
    render :action  => :new
  end
end
