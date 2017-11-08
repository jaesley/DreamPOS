class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :barcode
      t.string :title

      t.timestamps
    end
  end
end
