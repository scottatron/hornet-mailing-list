require 'mailchimp'

class Hornet::MailingList::MailChimp::List < Hornet::MailingList::List

  def api
    Mailchimp::API.new provider_api_key
  end

  def batch_subscribe(subscribers)
    batch = subscribers.map do |s|
      {
        email: {
          email: s.email, euid: s.id, leid: id
        },
        EMAIL_TYPE: 'html',
        merge_vars: {}
      }
    end
    self.subscribers << subscribers
    api.lists.batch_subscribe(provider_id, batch, false, true, false)
    save!
  end

  def name
    get_name if read_attribute(:name).blank?
    read_attribute :name
  end

  def get_name
    update_attributes! name: list['name']
  end

  def list
    api.lists.list({list_id: provider_id})['data'].shift
  end

end
