module UsersHelper
  def find_count(user)
    EauTask.all.map(&:user_id).find_all{|x| x == user.id}.size
  end
end
