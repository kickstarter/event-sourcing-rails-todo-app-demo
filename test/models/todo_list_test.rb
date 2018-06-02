require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test "create a todo list" do
    perform_enqueued_jobs do
      Commands::TodoList::Create.call(name: "My first list", metadata: { source: "test" })
    end

    assert_equal "My first list", TodoList.first!.name
  end
end
