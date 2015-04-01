class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, null: false
      t.references :post, null: false
      t.timestamps
    end
  end
end
