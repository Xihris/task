module EauTasksHelper
def color
  if @date_result > 0 && @date_result <= 2
    "list-group-item-warning"
  elsif @date_result > 2
    "list-group-item-success"
  elsif @date_result <= 0
    "list-group-item-danger"
  end
end
end
