class CreateTwilioNumbers < ActiveRecord::Migration
  def change
    create_table :twilio_numbers do |t|
      t.string :number

      t.timestamps
    end
  end
end
