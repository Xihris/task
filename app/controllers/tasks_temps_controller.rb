class TasksTempsController < ApplicationController

  def destroy
  end

  def index
    @temps = TasksTemp.all
  end

  def new
    @temp = TasksTemp.new
    @authors = Author.all
  end

  def create
    @temp = TasksTemp.new(temp_params)
    @temp.save
    redirect_to '/eau_tasks/new'
  end

  # def show
  #   @temp = User.find(params[:id])
  # end

  private
  def temp_params
    params.require(:tasks_temp).permit(:name, :date_start, :date_end, :author_id)
  end


end



