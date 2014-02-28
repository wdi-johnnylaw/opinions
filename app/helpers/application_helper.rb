module ApplicationHelper
  def opinion_for_thing(thing)
    current_user.opinions.find_by(thing_id: thing.id) || Opinion.new
  end
end
