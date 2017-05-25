class EauTasksController < ApplicationController
  def new
    @temps = TasksTemp.last
    a = JSON.parse(@temps.to_json).to_a.shift(6)
    a[1][1].split(/; /).map{|item| EauTask.create(
    {'name': item, 'id_task_temp': a[0][1], 'date_start': a[2][1], 'date_end': a[3][1],
    'author_id': a[4][1] }
    )}
    @temps.destroy
    redirect_to eau_tasks_path
  end

  def edit
    @eau = EauTask.find params[:id]
    # @eau = EauTask.update(eau_params)
  end

  def update
    @eau = EauTask.find params[:id]
    # @author = Author.find params[:author_id]


    if @eau.update(eau_params)
      redirect_to eau_tasks_path
    else
      render 'edit'
    end
  end

  def index
    @eaus = EauTask.all
    @authors = Author.all
    @users = User.all
  end

  def show
    @eau = EauTask.find params[:id]
    @authors = Author.all
  end

  private
  def eau_params
    params.require(:eau_task).permit(:name, :date_start, :date_end, :id_task_temp,
    :author_id, :user_id)
  end

end


