class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer    :photonumber, null: false
      t.references :page, null: false, foreign_key: true
      t.timestamps
    end
  end
end
