class Hornet::MailingList::List < ActiveRecord::Base
  attr_accessible :name, :provider_api_key, :provider_id, :type
  ProviderOptions = [['MailChimp', 'Hornet::MailingList::MailChimp::List']]
  has_many :list_subscribers
  has_many :subscribers, through: :list_subscribers

  def provider
    type.split('::')[-2]
  end

  def pending_subscribers
    ::Subscriber.where('id NOT IN (?)', subscribers.pluck(:id))
  end
end
