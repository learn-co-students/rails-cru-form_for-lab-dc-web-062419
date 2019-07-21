class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.belongs_to :artist
      t.belongs_to :genre
    end
  end
end
