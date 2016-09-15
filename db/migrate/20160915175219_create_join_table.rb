class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :images_tags do |t|
      t.integer :image_id
      t.integer :tag_id

      t.timestamps
    end

    remove_column :images, :tag_id, :integer
    remove_column :tags, :image_id, :integer
  end
end
