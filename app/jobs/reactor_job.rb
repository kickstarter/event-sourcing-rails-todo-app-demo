# frozen_string_literal: true

class ReactorJob < ApplicationJob
  def perform(event, reactor_class)
    reactor = reactor_class.constantize

    reactor.call(event)
  end
end
