class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :user, references: :users
      t.string :location, null: false
      t.integer :amount, :limit => 2
      t.text :comment
      t.datetime :donated_at
      t.timestamps
    end
  end
end
