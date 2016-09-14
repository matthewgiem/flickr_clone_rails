class AddPhotoToImages < ActiveRecord::Migration[5.0]
  def change
    change_table :images do |t|
      t.attachment :photo
    end
  end
end
