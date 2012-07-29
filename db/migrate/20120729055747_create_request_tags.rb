class CreateRequestTags < ActiveRecord::Migration
  def change
    create_table :request_tags do |t|
      t.integer :request_id
      t.integer :tags_id

      t.timestamps
    end
  end
end
