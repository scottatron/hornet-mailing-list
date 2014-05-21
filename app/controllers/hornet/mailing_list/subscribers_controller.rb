module Hornet
  module MailingList
    class SubscribersController < HornetController
      layout 'hornet_sitemap'

      def index
        @subscribers = Subscriber.all
      end

    end
  end
end