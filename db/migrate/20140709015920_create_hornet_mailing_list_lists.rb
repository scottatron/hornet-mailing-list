class CreateHornetMailingListLists < ActiveRecord::Migration
  def change
    create_table :hornet_mailing_list_lists do |t|
      t.string :type
      t.string :name
      t.string :provider_api_key
      t.string :provider_id
      t.timestamps
    end
  end
end
