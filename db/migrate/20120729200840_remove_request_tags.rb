class RemoveRequestTags < ActiveRecord::Migration
  def up
  	drop_table :request_tags
  end

  def down
  	  create_table :twilio_numbers do |t|
      t.string :number

      t.timestamps
    end
  end
end
