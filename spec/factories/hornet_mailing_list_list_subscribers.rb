# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hornet_mailing_list_list_subscriber, :class => 'Hornet::MailingList::ListSubscriber' do
    list_id "MyString"
    subscriber_id "MyString"
  end
end
