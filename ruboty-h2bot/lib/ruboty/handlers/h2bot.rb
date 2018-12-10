

module Ruboty
  module Handlers
    # A Ruboty Handler description
    class H2bot < Base
      on /uranai\z/, name: 'uranai', description: 'uranai yo'
      #env :development, "hoge"

      def uranai(message)
        message.reply "hoge\n"
      end

    end
  end
end
