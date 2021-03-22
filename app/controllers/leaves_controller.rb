class LeavesController < ApplicationController
  def index
    @leaves = Leave.all
  end

  def show
    @leave = Leave.find(params[:id])
  end

  def new
    @leave = Leave.new
  end

  def create
    @leave = Leave.new(leave_params)

    if @leave.save
      redirect_to @leave
    else
      render :new
    end
  end

  def edit
    @leave = Leave.find(params[:id])
  end

  def update
    @leave = Leave.find(params[:id])

    if @leave.update(leave_params)
      redirect_to @leave
    else
      render :edit
    end
  end

  private
  def leave_params
    params.require(:leave).permit(:start_date, :end_date)
  end
end
