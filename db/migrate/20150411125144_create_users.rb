class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username, :null => false
      t.string :email, :null => false
      t.string :gender, :null => true, :default => 'other'
      t.string :role, :null => false, :default => 'regular'
      t.string :blood_type, :null => true
      t.text :about, :null => true
      t.date :birthday, :null => true
      t.timestamps
    end
  end
end
