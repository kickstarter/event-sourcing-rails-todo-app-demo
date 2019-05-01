# frozen_string_literal: true

class Events::TodoItem::Created < Events::TodoItem::BaseEvent
  data_attributes :todo_list_id, :name

  def apply(todo_item)
    todo_item.todo_list_id = todo_list_id
    todo_item.name = name

    todo_item
  end
end
