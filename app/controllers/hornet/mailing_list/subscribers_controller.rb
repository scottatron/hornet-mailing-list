module Hornet
  module MailingList
    class SubscribersController < HornetController

      def index
        @subscribers = Subscriber.all
      end

    end
  end
end