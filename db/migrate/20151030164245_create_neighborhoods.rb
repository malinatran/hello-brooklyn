class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string  "name"
      t.string  "nickname"
      t.string  "borough"
      t.text    "description"
      t.string  "population"
      t.text    "img_url"
    end
  end
end
