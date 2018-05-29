require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  test "create a todo list" do
    Commands::TodoList::Create.call(name: "My first list", metadata: { source: "test" })

    assert_equal "My first list", TodoList.first!.name
  end
end
