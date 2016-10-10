class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :blog, index: true
      t.references :post, index: true
      t.references :message, index: true
      t.string :comment

      t.timestamps
    end
  end
end
