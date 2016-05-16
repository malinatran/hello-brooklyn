class RemoveImgUrlFromNeighborhoods < ActiveRecord::Migration
  def change
    remove_column :neighborhoods, :img_url
  end
end
