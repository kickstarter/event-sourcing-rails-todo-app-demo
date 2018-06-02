# frozen_string_literal: true

module Commands
  class TodoList::Create
    include Lib::Command

    attributes :name, :metadata

    private def build_event
      Events::TodoList::Created.new(
        name: name,
        metadata: metadata
      )
    end
  end
end
