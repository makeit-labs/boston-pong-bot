module SlackGamebot
  module Commands
    class Challenge < SlackRubyBot::Commands::Base
      def self.call(client, data, match)
        challenger = ::User.find_create_or_update_by_slack_id!(client, data.user)
        if challenger.registered?
          arguments = match['expression'].split.reject(&:blank?) if match['expression']
          arguments ||= []
          challenge = ::Challenge.create_from_teammates_and_opponents!(client.owner, data.channel, challenger, arguments)
          client.say(channel: data.channel, text: "#{challenge.challengers.map(&:user_name).and} challenged #{challenge.challenged.map(&:user_name).and} to a match! \n #{challenge.challenged.map(&:user_name).and}, to accept the challenge, type `pp accept`. \n To decline the challenge, type `pp decline`. \n To cancel this challenge, type `pp cancel`.", gif: 'challenge')
          logger.info "CHALLENGE: #{client.owner} - #{challenge}"
        else
          client.say(channel: data.channel, text: "You aren't registered to play, please type `pp register` first.", gif: 'register')
          logger.info "CHALLENGE: #{client.owner} - #{challenger.user_name}, failed, not registered"
        end
      end
    end
  end
end
