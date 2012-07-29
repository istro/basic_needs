class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.string :zip

      t.timestamps
    end
  end
end
