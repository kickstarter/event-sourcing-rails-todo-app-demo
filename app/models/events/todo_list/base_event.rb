class Events::TodoList::BaseEvent < Events::BaseEvent
  self.table_name = "todo_list_events"

  belongs_to :todo_list
end

