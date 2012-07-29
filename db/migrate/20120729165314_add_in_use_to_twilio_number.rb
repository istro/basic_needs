class AddInUseToTwilioNumber < ActiveRecord::Migration
  def change
    add_column :twilio_numbers, :in_use, :boolean
  end
end
