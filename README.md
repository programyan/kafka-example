# Karafka simple app

## Setup

- Add `127.0.0.1 kafka` to your /etc/hosts file
- Run kafka service `docker-compose up`
- Run karafka app `bundle exec karafka server`
- Run karafka web migrations `bundle exec karafka-web migrate`
- Run rails server `bundle exec rails server`

## Usage

- Run rails console `rails c`
- Run command `Karafka.producer.produce_sync(topic: 'sample', payload: { 'ping' => 'pong' }.to_json)` to produce message to the kafka
- Look at the logs

# Kafka web

Web interface for karafka is mounted at `localhost:3000/karakfa`

## Tests

There are one test with setup kafka for testing

Run `bundle exec rspec`
