require 'omniauth'
require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Bodymedia < OmniAuth::Strategies::OAuth

      option :name, "bodymedia"

      option :client_options, {
          :site               => 'https://api.bodymedia.com',
          :request_token_path => '/oauth/request_token',
          :access_token_path  => '/oauth/access_token',
          :authorize_path     => '/oauth/authorize'
      }

      uid do
        access_token.params['userid']
      end

      info do
        unless @info
          user = raw_info["body"]["users"][0]
          @info = {
            :id => user["id"],
            :firstname => user["firstname"],
            :lastname => user["lastname"],
            :shortname => user["shortname"],
            :gender => user["gender"] == 0 ? :male : :female,
            :birthdate => user["birthday"]
          }
        end
      end

      extra do
        { 
            :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.load user_json
      end

      def user_json
        consumer.request(:get, user_uri, access_token, { :scheme => :query_string }).body
      end

      def user_uri
        "https://api.bodymedia.com/v1.0/user/info?api_key=#{consumer_key}"
      end
    end
  end
end
