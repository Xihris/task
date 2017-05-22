class UnitsController < ApplicationController
  def new
    @unit = Unit.new
    @authors = Author.all
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      redirect_to root_url, notice: 'Задача завершена'
    else
      render 'new'
    end
  end

  def show
     @units = Unit.find params[:id]
    # @authors = Author.all
  end

  def edit
  end

  private
  def unit_params
    params.require(:unit).permit(:date_finish, :id_temp_tasks, :quan_u, :quan_f,
     :comment, :inn, :ogrn, :id_eau_tasks)
  end

end
