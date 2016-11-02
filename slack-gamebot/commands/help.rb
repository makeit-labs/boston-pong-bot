module SlackGamebot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      HELP = <<-EOS
I am your friendly Gamebot, here to help.

```
General
-------
hi: be nice, say hi to your bot
team: show your team's info and captains
register: register yourself as a player
unregister: unregister yourself
help: get this helpful message
sucks: express some frustration

Games
-----
challenge <opponent>, ... [with <teammate>, ...]: challenge opponent(s) to a game
accept: accept a challenge
decline: decline a previous challenge
cancel: cancel a previous challenge
lost [to <opponent>] [score, ...]: record your loss
resigned [to <opponent>]: record a resignation
draw: record a tie

Stats
-----
leaderboard [number|infinity]: show the leaderboard, eg. leaderboard 10
rank [<player> ...]: rank a player or a list of players
matches [number|infinity]: show this season's matches
season: show current season

Captains
--------
promote <player>: promote a user to captain
demote me: demote you from captain
set nickname <player> [name], unset nickname <player>: set/unset someone's nickname
```
        EOS
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: [
          HELP
        ].compact.join("\n"))
        client.say(channel: data.channel, gif: 'help')
        logger.info "HELP: #{client.owner} - #{data.user}"
      end
    end
  end
end
