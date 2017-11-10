class AddFieldsToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :issue, :integer
    add_column :items, :price, :decimal
    add_column :items, :release_date, :date
    add_column :items, :description, :text
  end
end
