module Hornet
  module MailingList
    class ListsController < HornetController

      def index
        @lists = List.all
      end

      def new
        @list = List.new
      end

      def create
        binding.pry
        klass = params[:list].delete(:type).constantize
        @list = klass.new params[:list]
        if @list.save
          redirect_to lists_path, notice: 'Mailing List Created'
        else
          render :new
        end
      end

    end
  end
end