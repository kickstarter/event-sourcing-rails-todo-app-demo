class Reactors::TodoList::SendGettingStartedEmail
  def self.call(event)
    todo_list = event.todo_list
    name = event.name

    # send an email...
  end
end
