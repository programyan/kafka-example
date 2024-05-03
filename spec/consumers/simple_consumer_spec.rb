# frozen_string_literal: true

RSpec.describe SimpleConsumer do
  subject(:consumer) { karafka.consumer_for('sample') }

  let(:nr1_value) { rand }
  let(:nr2_value) { rand }
  let(:sum) { nr1_value + nr2_value }

  before do
    # Sends first message to Karafka consumer
    karafka.produce({ 'number' => nr1_value }.to_json)

    # Sends second message to Karafka consumer
    karafka.produce({ 'number' => nr2_value }.to_json, partition: 2)

    # allow(Karafka.logger).to receive(:info)
  end

  it 'expects to log a proper message' do
    # expect(Karafka.logger).to receive(:info).with("Sum of 2 elements equals to: #{sum}")
    expect(consumer.consume).to eq(true)
  end
end