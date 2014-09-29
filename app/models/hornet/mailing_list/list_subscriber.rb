class Hornet::MailingList::ListSubscriber < ActiveRecord::Base
  attr_accessible :list_id, :subscriber_id
  belongs_to :list
  belongs_to :subscriber, class_name: '::Subscriber'
end
