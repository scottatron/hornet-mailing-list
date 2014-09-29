require 'spec_helper'

describe Hornet::MailingList::List do

  it { should have_many :list_subscribers }
  it { should have_many(:subscribers).through :list_subscribers }

end
