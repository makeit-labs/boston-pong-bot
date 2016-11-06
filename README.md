Boston Slack Pong Bot
=============
[![Build Status](https://travis-ci.org/makeit-labs/boston-pong-bot.svg)](https://travis-ci.org/makeit-labs/boston-pong-bot)
## Set Up Your Localhost

`bundle install`

### Set up the database

If you haven't installed mongodb yet, run:
`brew install mongodb`

Start mongodb
`mongod --config /usr/local/etc/mongod.conf`

Start the server:
`SLACK_API_TOKEN=<your API token> foreman start`

## Run test
`bundle exec rake spec`


## API

Slack-gamebot implements a Hypermedia API. Navigate to the application root to browse through available objects and methods. PlayPlay.io's Gamebot is [here](http://www.playplay.io/api), you can see [dblock's current ping-pong elo here](http://www.playplay.io/api/users/5543f64d6237640003000000).

A team captain must opt-in serving data via the API with `set api on`. The data served by the API includes team's Slack IDs, usernames and game stats.

![](screenshots/api.png)

We recommend [HyperClient](https://github.com/codegram/hyperclient) to query the API programmatically in Ruby.

## Contributing

This bot is built with [slack-ruby-bot-server](https://github.com/dblock/slack-ruby-bot-server). See [CONTRIBUTING](CONTRIBUTING.md).

## Copyright and License

Copyright (c) 2015-2016, Daniel Doubrovkine, Artsy and [Contributors](CHANGELOG.md).

This project is licensed under the [MIT License](LICENSE.md).
