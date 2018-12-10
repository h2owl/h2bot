require 'date'

module Ruboty
  module Handlers
    # A Ruboty Handler description
    class H2bot < Base
      SEIZA = [
        { name: 'やぎ座', border: 119 },
        { name: 'みずがめ座', border: 218 },
        { name: 'うお座', border: 320 },
        { name: 'おひつじ座', border: 419 },
        { name: 'おうし座', border: 520 },
        { name: 'ふたご座', border: 621 },
        { name: 'かに座', border: 722 },
        { name: 'しし座', border: 822 },
        { name: 'おとめ座', border: 922 },
        { name: 'てんびん座', border: 1023 },
        { name: 'さそり座', border: 1122 },
        { name: 'いて座', border: 1221 }
      ]

      on /うらない\s(\d{3,4})\z/, name: 'uranai', description: 'uranai yo'
      #env :development, "hoge"

      def uranai(message)
        target_date_num = message.match_data[1].to_i
        str_for_date = "2000/%02d/%02d" % ("%04d" % target_date_num).scan(/.{2}/)
        begin
          date = Date.parse(str_for_date)
          message.reply("うらないます：%s(%s)" % [date.strftime("%m/%d"), get_seiza_from_date(date)])
        rescue => e
          message.reply("ごめん、無理でした")
        end
      end

      private
        def get_seiza_from_date(d)
          date_num = d.strftime("%m%d").to_i
          seiza = nil
          SEIZA.each do |row|
            if row[:border] >= date_num
              seiza = row
              break
            end
          end
          if !seiza
            seiza = SEIZA.first
          end
          return seiza[:name]
        end
    end
  end
end
