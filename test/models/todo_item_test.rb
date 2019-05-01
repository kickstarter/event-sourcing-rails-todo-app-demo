require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test "create a todo item" do
    todo_list = TodoList.create!(name: "List")
    event = Commands::TodoItem::Create.call(name: "Todo", todo_list: todo_list, metadata: {})
    todo_item = event.todo_item

    assert_equal "Todo", todo_item.name
  end
end
