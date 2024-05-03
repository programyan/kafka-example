# frozen_string_literal: true

require_relative './application_consumer'

class SimpleConsumer < ApplicationConsumer
  def handle_event
    Rails.logger.info { { messages:, payloads: messages.payloads } }

    true
  end
end
