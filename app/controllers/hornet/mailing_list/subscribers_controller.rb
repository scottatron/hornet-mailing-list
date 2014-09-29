module Hornet
  module MailingList
    class SubscribersController < HornetController

      def index
        @subscribers = Subscriber.page(page).per(50)
      end

      private

      def page
        params[:page] || 1
      end

    end
  end
end
