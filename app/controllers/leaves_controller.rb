class LeavesController < ApplicationController
  def index
    @leaves = Leave.all
  end
  def show
    @leave = Leave.find(params[:id])
  end
end
