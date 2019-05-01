class Events::TodoItem::BaseEvent < Lib::BaseEvent
  self.table_name = "todo_item_events"

  belongs_to :todo_item, class_name: "::TodoItem", autosave: false
end

