class AddGivenVideoToVideo < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :given_video, :string
  end
end
