class RollsController < ApplicationController
  def new
    @roll = Roll.new()
    @rolls = Roll.all.reverse
  end

  def create
    @roll = Roll.create(roll_params)
    @roll.roll = 1 + rand(@roll.roll)
    if @roll.save
      redirect_to root_url
    else
      redirect_to root_url

    end
  end

  def index
    @rolls = Roll.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def roll_params
    params.require(:roll).permit(:roll)
  end
end
