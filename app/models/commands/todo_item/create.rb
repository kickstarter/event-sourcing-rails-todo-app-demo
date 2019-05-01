# frozen_string_literal: true

module Commands
  class TodoItem::Create
    include Lib::Command

    attributes :todo_list, :name, :metadata

    private def build_event
      Events::TodoItem::Created.new(
        todo_list_id: todo_list.id,
        name: name,
        metadata: metadata
      )
    end
  end
end
