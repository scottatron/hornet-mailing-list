require 'spec_helper'

feature 'Mailing Lists' do

  scenario 'Creating a MailChimp mailing list' do
    create :site
    sign_in :the_boss
    visit hornet_path
    click_on 'Mailing Lists'
    click_on 'Add Mailing List'

    select 'MailChimp', from: 'List Provider'
    fill_in 'Provider ID', with: '8e4b65f24e'
    click_on 'Create List'
    page.should have_content 'Mailing List Created'

    binding.pry
    # external_id = 8e4b65f24e
  end

end
