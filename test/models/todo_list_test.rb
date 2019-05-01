require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test "create a todo list" do
    perform_enqueued_jobs do
      Commands::TodoList::Create.call(name: "My first list", metadata: { source: "test" })
    end

    assert_equal "My first list", TodoList.first!.name
  end

  test "update name" do
    event = Commands::TodoList::Create.call(name: "My first list", metadata: {})

    todo_list = event.todo_list

    Commands::TodoList::UpdateName.call(todo_list: todo_list, name: "New name", metadata: {})

    assert_equal "New name", TodoList.first!.name
  end
end
