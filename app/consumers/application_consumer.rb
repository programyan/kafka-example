# frozen_string_literal: true

class ApplicationConsumer < ::Karafka::BaseConsumer
  def consume
    Rails.logger.tagged('kafka_consumer', self.class.name) do
      handle_event
    end
  end
end