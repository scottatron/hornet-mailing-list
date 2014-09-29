require 'spec_helper'

describe Hornet::MailingList::ListSubscriber do

  it { should belong_to :list }
  it { should belong_to :subscriber }

end
