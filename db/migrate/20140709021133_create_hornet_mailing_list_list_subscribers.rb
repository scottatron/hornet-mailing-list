class CreateHornetMailingListListSubscribers < ActiveRecord::Migration
  def change
    create_table :hornet_mailing_list_list_subscribers do |t|
      t.string :list_id
      t.string :subscriber_id

      t.timestamps
    end
  end
end
