# Subscribes Reactors to Events.
# * `trigger` will run the Reactor synchronously
# * `async` will queue up a ReactorJob to run the Reactor
class Events::Dispatcher < Lib::EventDispatcher
end
