class Events::TodoList::BaseEvent < Lib::BaseEvent
  self.table_name = "todo_list_events"

  belongs_to :todo_list, class_name: "::TodoList", autosave: false
end

