class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :title
      t.string :user_name
      t.integer :user_id

      t.timestamps
    end
  end
end
