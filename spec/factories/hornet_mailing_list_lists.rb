# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hornet_mailing_list_list, :class => 'Hornet::MailingList::List' do
    type ""
    name "MyString"
    provider_id "MyString"
  end
end
