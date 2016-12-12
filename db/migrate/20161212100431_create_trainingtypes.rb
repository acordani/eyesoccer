class CreateTrainingtypes < ActiveRecord::Migration
  def change
    create_table :trainingtypes do |t|
      t.references :user, index: true, foreign_key: true
      t.string :category
      t.string :subcategory

      t.timestamps null: false
    end
  end
end
