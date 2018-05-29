# frozen_string_literal: true

class Events::TodoList::Created < Events::TodoList::BaseEvent
  data_attributes :name

  def apply(todo_list)
    todo_list.name = name

    todo_list
  end
end
