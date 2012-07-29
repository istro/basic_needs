class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :requester_number
      t.integer :twilio_number_id
      t.string :provider_number
      t.string :message
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
