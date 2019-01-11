class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string      :name,null:false
      t.text        :image
      t.text        :text
      t.timestamps
    end
  end
end
