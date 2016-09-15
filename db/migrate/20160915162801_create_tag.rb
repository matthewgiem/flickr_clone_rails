class CreateTag < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :image_id

      t.timestamps
    end

    add_column :images, :tag_id, :integer
  end
end
