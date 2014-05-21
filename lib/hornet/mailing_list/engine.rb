module Hornet
  module MailingList
    class Engine < ::Rails::Engine
      isolate_namespace Hornet::MailingList
      engine_name 'hornet_mailing_list'
    end
  end
end
