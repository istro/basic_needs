class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :requester
      t.string :twilio
      t.string :provider
      t.string :message
      t.array :tags
      t.string :zip

      t.timestamps
    end
  end
end
