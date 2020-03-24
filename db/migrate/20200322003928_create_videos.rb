class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
